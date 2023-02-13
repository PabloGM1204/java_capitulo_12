<%-- 
    Document   : Ejercicio04
    Created on : 13 feb 2023, 18:49:37
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio04</title>
    </head>
    <body>
        <h1>Media de las notas</h1>
        <div>
            <form method="post" action="media.jsp">
                Dime la primera nota:
                <input type="number" min="0" max="10" name="nota1"><br>
                Dime la segunda nota:
                <input type="number" min="0" max="10" name="nota2"><br>
                Dime la tercera nota:
                <input type="number" min="0" max="10" name="nota3">
                <input type="submit" value="Aceptar">
        </form>
        </div>
    </body>
</html>
