<%-- 
    Document   : Ejercicio10
    Created on : 18 feb 2023, 16:56:26
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="CSS/style.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio10</title>
    </head>
    <body>
        <h1 class="title">Cuestionario</h1>
        <form method="post" action="resultado.jsp">
            1. ¿Cuál de los siguientes tipos de datos de Java tiene más precisión?</br>
            <input type="radio" name="p1" value="0">int</input><br>
            <input type="radio" name="p1" value="1">double.</input><br>
            <input type="radio" name="p1" value="0">string</input><br>
            2. ¿Cuál es el lenguaje que se utiliza para hacer consultas en las bases de datos?</br>
            <input type="radio" name="p2" value="0">XML</input><br>
            <input type="radio" name="p2" value="0">SELECT</input><br>
            <input type="radio" name="p2" value="1">SQL.</input><br>
            3. Para insertar un hiperenlace en una página se utiliza la etiqueta...</br>
            <input type="radio" name="p3" value="0">href</input><br>
            <input type="radio" name="p3" value="1">a.</input><br>
            <input type="radio" name="p3" value="0">link</input><br>
            4. ¿En qué directorio se encuentran los archivos de configuración de Linux?</br>
            <input type="radio" name="p4" value="1">/etc.</input><br>
            <input type="radio" name="p4" value="0">/config</input><br>
            <input type="radio" name="p4" value="0">/cfg</input><br>
            5. ¿Cuál de las siguientes memorias es volátil?</br>
            <input type="radio" name="p5" value="1">RAM.</input><br>
            <input type="radio" name="p5" value="0">EPROM</input><br>
            <input type="radio" name="p5" value="0">CDD</input><br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
