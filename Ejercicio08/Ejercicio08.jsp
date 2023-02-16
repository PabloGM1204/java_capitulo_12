<%-- 
    Document   : Ejercicio08
    Created on : 16 feb 2023, 18:49:33
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="CSS/style.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio08</title>
    </head>
    <body>
        <h1 class="title">Dime un número</h1>
        <form method="post" action="tabla.jsp">
            <input type="text" name="number">
            <p class="title">Hasta que número lo quieres multiplicar</p>
            <input type="text" name="mult"><br><br>
            <input type="submit" value="OK">
        </form>
    </body>
</html>
