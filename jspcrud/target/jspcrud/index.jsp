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
    <h1 class="title">Proyecto CRUD en JSP</h1>
    <div class="index">
        <form method="post" action="alumnos.jsp?accion=1">
            <button type="submit" value="Alumnos">Alumnos</button>
        </form>
        <form method="post" action="grupos.jsp?accion=1">
            <button type="submit" value="Grupos">Grupos</button>
        </form>
        <form method="post" action="matriculacion.jsp?accion=1">
            <button type="submit" value="Matriculación">Matriculación</button>
        </form>
    </div>
</body>
</html>
