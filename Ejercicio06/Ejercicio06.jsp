<%-- 
    Document   : Ejercicio06
    Created on : 14 feb 2023, 10:42:30
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio06</title>
    </head>
    <body>
        <%--Una peseta son 0.006 euros--%>
        <h1>Convertir de pesetas a euros</h1>
        <form method="post" action="resultado.jsp">
            Dime cuantas pesetas: 
            <input type="number" name="pesetas">
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>
