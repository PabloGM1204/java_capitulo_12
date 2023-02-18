<%-- 
    Document   : resultado.jsp
    Created on : 18 feb 2023, 17:18:20
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="CSS/style.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <h1>HAS SACADO</h1>
        <%
            int puntos = 0;
            for (Integer i = 1; i < 6; i++) {
                puntos += Integer.parseInt(request.getParameter("p" + i.toString()));
            }
            out.print(puntos+" sobre 5");
            out.print("<br>");
        %>
        Si quieres volver a hacer el <a href="Ejercicio10.jsp">cuestionario</a> dale click.
    </body>
</html>
