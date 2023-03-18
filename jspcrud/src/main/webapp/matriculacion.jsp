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
    <link rel="stylesheet" href="assets/CSS/style.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Matriculaci&oacuten</title>
</head>
<body>
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
            <h1 class="title">Matriculaci&oacuten de alumnos</h1>
                <h2 class="subtitle">Alumnos</h2>
                <div class="tableAlum">
                    <table>
                        <tr><td><strong>Nombre</strong></td> <td><strong>Apellidos</strong></td> <td><strong>Grupo</strong></td> <td><strong>Matricular</strong></td> <td><strong>Quitar grupo</strong></td></tr>
                        <%
                        ArrayList <Alumno> listaAlumno = serviceAlumno.requestAll();
                            for (Alumno alum : listaAlumno) {
                                long idA = alum.getId();
                                %>
                                <tr> <td><%= alum.getNombre() %></td> <td><%= alum.getApellidos() %></td> <td><%= alum.getNomGrupo() %></td> <td><a href="matriculacion.jsp?id=<%=idA%>&accion=2"><i class="fa fa-check" aria-hidden="true"></i></td> <td><a href="matriculacion.jsp?id=<%=idA%>&accion=4"> <i class="fa fa-trash"></i></a> </td>  </tr>
                            <%}%>
                    </table>
                </div>
                <button class="boton-inicio" onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;
                
            case 2:
                Long idAl = Long.parseLong(request.getParameter("id"));
                %>
                <h1 class="title">Elige un grupo</h1>
                <h2 class="subtitle">Grupos</h2>
                <div class="tableAlum">
                    <table>
                        <tr><td><strong>Nombre</strong></td> <td><strong>Profesor</strong></td> <td><strong>Matricular</strong></td></tr>
                        <%
                        ArrayList <Grupo> listaGrupo = serviceGrupo.requestAll();
                            for (Grupo gr : listaGrupo) { 
                                long idG = gr.getId();
                                %>
                                <tr> <td><%= gr.getNombre() %></td> <td><%= gr.getProfesor() %></td> <td> <a href="matriculacion.jsp?idA=<%=idAl%>&idG=<%=idG%>&accion=3"><i class="fa fa-check" aria-hidden="true"></i></a> </td> </tr>
                            <%}%>
                    </table>
                </div>
                <div class="volver"><a href="matriculacion.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>
                <button class="boton-inicio" onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;

            case 3:
                Long idAlum = Long.parseLong(request.getParameter("idA"));
                Long idGru = Long.parseLong(request.getParameter("idG"));
                serviceMat.DarMatricula(idGru, idAlum);
                %>
                <h1 class="title">El alumno ha sido matriculado</h1>
                <div class="volver"><a href="matriculacion.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>
                <button class="boton-inicio" onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;
            
            case 4:
            Long idAlu = Long.parseLong(request.getParameter("id"));
            serviceMat.sacar(idAlu);
            %>
            <h1 class="title">El alumno sacado del grupo correctamente</h1>
            <div class="volver"><a href="matriculacion.jsp?accion=1"><button class="boton-volver" type="button">Volver</button></a></div>
            <button class="boton-inicio" onclick="window.location.href='index.jsp'">Inicio</button>
            <%
            break;

            default:
                break;
        }

        pool.closeAll();
        %>
</body>
</html>