<%-- 
    Document   : Ejercicio05
    Created on : 14 feb 2023, 8:51:37
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css"/>
        <title>Ejercicio05</title>
    </head>
    <body>
        <%--El valor de un euro son 166.386 pesetas--%>
        <h1>Conversor de Euros a Pesetas</h1>
        <p>Un euro son 166.386 pestas.</p>
        <form method="post" action="resultado.jsp">
            Cantidad en euros:
            <input type="number" min="0" step="0.01" name="euros">
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>
