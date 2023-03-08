<%-- 
    Document   : coche
    Created on : 8 mar 2023, 17:52:04
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejercicio 17</title>
    <link href="estilos.css" rel="stylesheet"/>
  </head>
  <body>
    <h1>Aquí tiene su coche, enhorabuena.</h1>
    <%
      String tapiceria = request.getParameter("tapiceria");
      String moldura = request.getParameter("moldura");
      String imagen ="IMG/" + tapiceria + moldura + ".jpg";
    %>
    <p><img src="<%= imagen %>"></p>
  </body>
</html>
