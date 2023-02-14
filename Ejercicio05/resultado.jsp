<%-- 
    Document   : resultado
    Created on : 14 feb 2023, 9:15:29
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <h1>Resultado</h1>
        <% 
            double e = Double.valueOf(request.getParameter("euros"));
            double t = e*166.386;
            out.print(e+" euro son "+t+" pesetas");
        %>
    </body>
</html>
