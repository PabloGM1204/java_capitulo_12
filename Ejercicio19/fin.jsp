<%-- 
    Document   : fin
    Created on : 12 mar 2023, 12:40:22
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejercicio 19</title>
    <link href="CSS/style.css" rel="stylesheet"/>
  </head>
  <body>
    <h1>Apuesta y gana</h1>
    <div id="principal">
      <%
        int dinero = Integer.parseInt(request.getParameter("dinero"));
      %>
      <h2>Ha conseguido <%= dinero %> euros</h2>
      <form method="post" action="Ejercicio19.jsp">
        <input type="submit" value="Volver a jugar">
      </form>
    </div>
  </body>
</html>
