<%-- 
    Document   : JSPCRUD
    Created on : 15 mar 2023, 10:30:17
    Author     : pablo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/CSS/style.css"/>
    <title>CRUD en JSP</title>
</head>
<body>
    <form method="post" action="alumnos.jsp?accion=1">
        <input type="submit" value="Alumnos">
    </form>
    <form method="post" action="grupos.jsp?accion=1">
        <input type="submit" value="Grupos">
    </form>
    <form method="post" action="matriculacion.jsp?accion=1">
        <input type="submit" value="Matriculación">
    </form>
</body>
</html>
