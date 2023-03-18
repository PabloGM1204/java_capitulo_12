<%-- 
    Document   : JSPCRUD
    Created on : 15 mar 2023, 10:30:17
    Author     : pablo
--%>

<%@ page import="grupos.GruposService" %>
<%@ page import="grupos.Grupo" %>
<%@ page import="java.sql.*" %>
<%@ page import="alumnos.AlumnosService" %>
<%@ page import="alumnos.Alumno" %>
<%@ page import="matriculacion.MatriculacionService" %>
<%@ page import="connection.ConnectionPool" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link rel="stylesheet" href="assets/CSS/style.css"/>-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Matriculaci&oacuten</title>
</head>
<body>
    <h1>Matriculaci&oacuten de alumnos</h1>
    <%
        // Configuración de la conexión a la base de datos
        String url = "jdbc:mysql://localhost:3306/alumnos";
        String usuario = "user";
        String clave = "user";

        ConnectionPool pool = new ConnectionPool(url, usuario, clave);
        

        AlumnosService serviceAlumno = new AlumnosService(pool.getConnection());
        GruposService serviceGrupo = new GruposService(pool.getConnection());
        MatriculacionService serviceMat = new MatriculacionService(pool.getConnection());%>


        <%
        int op = Integer.parseInt(request.getParameter("accion"));
        switch (op) {
            case 1:%>
                <h1>Alumnos</h1>
                <div>
                    <table>
                        <tr><td>Nombre</td> <td>Apellidos</td> <td>Grupo</td> <td>Matricular</td> <td>Quitar grupo</td></tr>
                        <%
                        ArrayList <Alumno> listaAlumno = serviceAlumno.requestAll();
                            for (Alumno alum : listaAlumno) {
                                long idA = alum.getId();
                                %>
                                <tr> <td><%= alum.getNombre() %></td> <td><%= alum.getApellidos() %></td> <td><%= alum.getNomGrupo() %></td> <td><a href="matriculacion.jsp?id=<%=idA%>&accion=2"><i class="fa fa-check" aria-hidden="true"></i></td> <td><a href="matriculacion.jsp?id=<%=idA%>&accion=4"> <i class="fa fa-trash"></i></a> </td>  </tr>
                            <%}%>
                    </table>
                </div>
                <button onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;
                
            case 2:
                Long idAl = Long.parseLong(request.getParameter("id"));
                %>
                <h1>Grupos</h1>
                <div>
                    <table>
                        <tr><td>Nombre</td> <td>Profesor</td> <td>Matricular</td></tr>
                        <%
                        ArrayList <Grupo> listaGrupo = serviceGrupo.requestAll();
                            for (Grupo gr : listaGrupo) { 
                                long idG = gr.getId();
                                %>
                                <tr> <td><%= gr.getNombre() %></td> <td><%= gr.getProfesor() %></td> <td> <a href="matriculacion.jsp?idA=<%=idAl%>&idG=<%=idG%>&accion=3"><i class="fa fa-check" aria-hidden="true"></i></a> </td> </tr>
                            <%}%>
                    </table>
                </div>
                <button onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;

            case 3:
                Long idAlum = Long.parseLong(request.getParameter("idA"));
                Long idGru = Long.parseLong(request.getParameter("idG"));
                out.print(idAlum);
                out.print(idGru);
                serviceMat.DarMatricula(idGru, idAlum);
                %>
                <h1>El alumno ha sido matriculado</h1>
                <button onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;
            
            case 4:
            Long idAlu = Long.parseLong(request.getParameter("id"));
            serviceMat.sacar(idAlu);
            %>
            <h1>El alumno sacado del grupo correctamente</h1>
            <button onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;

            default:
                break;
        }

        pool.closeAll();
        %>
</body>
</html>