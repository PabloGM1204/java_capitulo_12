<%-- 
    Document   : JSPCRUD
    Created on : 15 mar 2023, 10:30:17
    Author     : pablo
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="grupos.GruposService" %>
<%@ page import="grupos.Grupo" %>
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
    <h1>Gestión de Grupos</h1>
   
    
    <%
        // Configuración de la conexión a la base de datos
        String url = "jdbc:mysql://localhost:3306/alumnos";
        String usuario = "user";
        String clave = "user";

        ConnectionPool pool = new ConnectionPool(url, usuario, clave);
        
        GruposService service = new GruposService(pool.getConnection());%>

        
        <%
        int op = Integer.parseInt(request.getParameter("accion"));
        switch (op) {
            case 1:%>
                <div>
                    <table>
                        <tr><td>Nombre</td> <td>Profesor</td> <td>Cambiar</td> <td>Borrar</td> </tr>
                        <%
                        ArrayList <Grupo> lista = service.requestAll();
                            for (Grupo gr : lista) { 
                                long idG = gr.getId();
                                %>
                                <tr> <td><%= gr.getNombre() %></td> <td><%= gr.getProfesor() %></td> <td> <a href="grupos.jsp?id=<%=idG%>&accion=2"><i class="icon fa fa-pencil"></i></a> </td>  <td> <a href="grupos.jsp?id=<%=idG%>&accion=3"><i class="fa fa-trash"></i></a> </td> </tr>
                            <%}%>
                    </table>
                </div>
                <div>
                    <a class="inline icon" href="grupos.jsp?accion=4"> <i class="fa fa-user-plus" aria-hidden="true"></i> </a>
                </div>
                <button onclick="window.location.href='index.jsp'">Inicio</button>
                
            <%
            break;
                
            case 2:
                out.print("<h1>Modificación de Grupo</h1>");
                long idm = Long.parseLong(request.getParameter("id"));
                out.print(idm);%>
                
                <div>
                    <form method="POST" action="grupos.jsp?accion=5&idG=<%=idm%>">
                        <label for="grupo">Grupo</label>
                        <input type="text" name="grupo" placeholder="Escriba el nombre del grupo ha modificar" required>
                        <label for="profesor">Profesor</label>
                        <input type="text" name="profesor" placeholder="Escriba el nombre del profesor de la clase" required>
                        <input type="submit" value="Modificar">
                    </form>
                </div>
                <a href="grupos.jsp?accion=1"><button type="button">Volver</button></a>
            <%
            break;
            
            case 3:
                out.print("<h1>El grupo ha sido borrado</h1>");
                long idBorrar = Long.parseLong(request.getParameter("id")); 
                service.delete(idBorrar);
                %>
                <form method="POST" action="grupos.jsp?accion=1">
                    <button type="submit">Volver</button>
                </form>
                <%
            break;

            case 4:%>
                <h1>Creacion de Grupos</h1>
                <div>
                    <form method="POST" action="grupos.jsp?accion=6">
                        <label for="grupo">Grupo</label>
                        <input type="text" name="grupo" placeholder="Escriba el nombre del grupo ha crear" required>
                        <label for="profesor">Profesor</label>
                        <input type="text" name="profesor" placeholder="Escriba el nombre del profesor de la clase" required>
                        <input type="submit" value="Crear">
                    </form>
                </div>
                <a href="grupos.jsp?accion=1"><button type="button">Volver</button></a>
            <%break;

            case 5:
                out.print("<h1>El grupo ha sido modificado</h1>");
                Long idg = Long.parseLong(request.getParameter("idG"));
                out.print(idg);
                String grupo = request.getParameter("grupo");
                String profesor = request.getParameter("profesor");
                service.update(idg, grupo, profesor);
                %>
                <form method="POST" action="grupos.jsp?accion=1">
                    <button type="submit">Volver</button>
                </form>
                <%
            break;

            case 6:
                out.print("<h1>El grupo ha sido creado</h1>");
                String grupoc = request.getParameter("grupo");
                String profesorc = request.getParameter("profesor");
                service.create(grupoc, profesorc);
                %>
                <form method="POST" action="grupos.jsp?accion=1">
                    <button type="submit">Volver</button>
                </form>
                <%
            break;
            default:
                break;
        }
        %>
            
        <%
        
        pool.closeAll();
    %>
    
</body>
</html>
