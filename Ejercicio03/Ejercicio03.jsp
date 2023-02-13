<%-- 
    Document   : Ejercicio02
    Created on : 13 feb 2023, 17:16:25
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css"/>
        <title>Ejercicio03</title>
    </head>
    <body>
        <h1>Formulario de datos personales</h1>
        <div class="center-div">
            <form method="post" action="saludo.jsp">
                <p>Dime tu nombre:</p>
                <input type="text" name="nombre">
                <p>Dime tu edad:</p>
                <input type="int" name="edad"><br><br>
                <input type="submit" value="Enviar">
            </form>
        </div>
    </body>
</html>
