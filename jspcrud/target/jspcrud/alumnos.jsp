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
    <!--<link rel="stylesheet" href="assets/CSS/style.css"/>-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Alumnos</title>
</head>
<body>
    <h1>Gestion de Alumnos</h1>
   
    
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
                <div>
                    <table>
                        <tr><td>Nombre</td> <td>Apellidos</td> <td>Grupo</td> <td>Cambiar</td> <td>Borrar</td> </tr>
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
                    <a class="inline icon" href="alumnos.jsp?accion=4"><i class="fa fa-user-plus" aria-hidden="true"></i></a>
                </div>
                <button onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;
            case 2:
                out.print("<h1>Modificación de Alumno</h1>");
                long idm = Long.parseLong(request.getParameter("id"));
                out.print(idm);%>
            
                <div>
                    <form method="POST" action="alumnos.jsp?accion=5&idA=<%=idm%>">
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" placeholder="Escriba el nombre del alumno ha modificar" required>
                        <label for="apellido">Apellido</label>
                        <input type="text" name="apellido" placeholder="Escriba el apellido del alumno" required>
                        <input type="submit" value="Modificar">
                    </form>
                </div>
                <a href="alumnos.jsp?accion=1"><button type="button">Volver</button></a>

            <% break;

            case 3:
                out.print("<h1>El alumno ha sido borrado</h1>");
                long idBorrar = Long.parseLong(request.getParameter("id")); 
                service.delete(idBorrar);
                %>
                <form method="POST" action="alumnos.jsp?accion=1">
                    <button type="submit">Volver</button>
                </form>
            <% break;
            case 4:%>
                <h1>Creacion de Alumnos</h1>
                <div>
                    <form method="POST" action="alumnos.jsp?accion=6">
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" placeholder="Escriba el nombre del alumno ha crear" required>
                        <label for="apellido">Apellidos</label>
                        <input type="text" name="apellido" placeholder="Escriba el apellido del alumno" required>
                        <input type="submit" value="Crear">
                    </form>
                </div>
                <a href="alumnos.jsp?accion=1"><button type="button">Volver</button></a>
            <% break;

            case 5:
                out.print("<h1>El alumno ha sido modificado</h1>");
                Long ida = Long.parseLong(request.getParameter("idA"));
                out.print(ida);
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                service.update(ida, nombre, apellido);
                %>
                <form method="POST" action="alumnos.jsp?accion=1">
                    <button type="submit">Volver</button>
                </form>
                <%
            break;

            case 6:
                out.print("<h1>El Alumno ha sido creado</h1>");
                String nombrec = request.getParameter("nombre");
                String apellidoc = request.getParameter("apellido");
                service.create(nombrec, apellidoc);
                %>
                <form method="POST" action="alumnos.jsp?accion=1">
                    <button type="submit">Volver</button>
                </form>
            <%
            break;

            default:
                break;
        }
        
        pool.closeAll();
    %>
    
</body>
</html>
