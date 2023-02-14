<%-- 
    Document   : resultado
    Created on : 14 feb 2023, 10:55:29
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
            double p = Double.valueOf(request.getParameter("pesetas"));
            out.println(p*0.006);
        %>
    </body>
</html>
