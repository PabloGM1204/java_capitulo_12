<%-- 
    Document   : JSPCRUD
    Created on : 15 mar 2023, 10:30:17
    Author     : pablo
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="alumnos.AlumnosService" %>
<%@ page import="alumnos.Alumno" %>
<%@ page import="connection.ConnectionPool" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/CSS/style.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Alumnos</title>
</head>
<body>
   
    
    <%
        // Configuración de la conexión a la base de datos
        String url = "jdbc:mysql://localhost:3306/alumnos";
        String usuario = "user";
        String clave = "user";

        ConnectionPool pool = new ConnectionPool(url, usuario, clave);
        

            AlumnosService service = new AlumnosService(pool.getConnection());%>
        <%
        int op = Integer.parseInt(request.getParameter("accion"));
        switch (op) {
            case 1: %>
                <h1 class="title">Gestión de Alumnos</h1>

                <div class="tableAlum">
                    <table>
                        <tr><td><strong>Nombre</strong></td> <td><strong>Apellidos</strong></td> <td><strong>Grupo</strong></td> <td><strong>Cambiar</strong></td> <td><strong>Borrar</strong></td> </tr>
                        <%
                        ArrayList <Alumno> lista = service.requestAll();
                            for (Alumno alum : lista) {
                                long idA = alum.getId();
                                %>
                                <tr> <td><%= alum.getNombre() %></td> <td><%= alum.getApellidos() %></td> <td><%= alum.getNomGrupo() %></td> <td><a href="alumnos.jsp?id=<%=idA%>&accion=2"><i class="icon fa fa-pencil"></i></td>  <td><a href="alumnos.jsp?id=<%=idA%>&accion=3"> <i class="fa fa-trash"></i></a> </td> </tr>
                            <%}%>
                    </table>
                </div>
                <div id="crear">
                    <a class="boton-crear" href="alumnos.jsp?accion=4"><i class="fa fa-user-plus" aria-hidden="true"></i></a>
                </div>
                <button class="boton-inicio" onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;
            case 2:
                out.print("<h1 class='title'>Modificación de Alumno</h1>");
                long idm = Long.parseLong(request.getParameter("id"));
                %>
            
                <div class="modiAlum">
                    <form method="POST" action="alumnos.jsp?accion=5&idA=<%=idm%>">
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" placeholder="Escriba el nombre del alumno ha modificar" required>
                        <label for="apellido">Apellido</label>
                        <input type="text" name="apellido" placeholder="Escriba el apellido del alumno" required>
                        <button class="boton-mod" type="submit">Modificar</button>
                    </form>
                </div>
                <div class="volver"><a href="alumnos.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>

            <% break;

            case 3:
                out.print("<h1 class='title'>El alumno ha sido borrado</h1>");
                long idBorrar = Long.parseLong(request.getParameter("id")); 
                service.delete(idBorrar);
                %>
                <div class="volver"><a href="alumnos.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>
            <% break;
            case 4:%>
                <h1 class='title'>Creacion de Alumnos</h1>
                <div class="modiAlum">
                    <form method="POST" action="alumnos.jsp?accion=6">
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" placeholder="Escriba el nombre del alumno ha crear" required>
                        <label for="apellido">Apellidos</label>
                        <input type="text" name="apellido" placeholder="Escriba el apellido del alumno" required>
                        <button class="boton-mod" type="submit">Crear</button>
                    </form>
                </div>
                <div class="volver"><a href="alumnos.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>
            <% break;

            case 5:
                out.print("<h1 class='title'>El alumno ha sido modificado</h1>");
                Long ida = Long.parseLong(request.getParameter("idA"));
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                service.update(ida, nombre, apellido);
                %>
                <div class="volver"><a href="alumnos.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>
                <%
            break;

            case 6:
                out.print("<h1 class='title'>El Alumno ha sido creado</h1>");
                String nombrec = request.getParameter("nombre");
                String apellidoc = request.getParameter("apellido");
                service.create(nombrec, apellidoc);
                %>
                <div class="volver"><a href="alumnos.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>
            <%
            break;

            default:
                break;
        }
        
        pool.closeAll();
    %>
    
</body>
</html>
