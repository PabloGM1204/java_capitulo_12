<%-- 
    Document   : Ejercicio19
    Created on : 12 mar 2023, 12:37:06
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
    <form method="post" action="juego.jsp">
      <p>Por favor, introduzca la cantidad que quiere apostar:</p>
      <input type="number" min="1" name="dinero">€<br>
      <input type="submit" value="Aceptar">
    </form>
    </div>
  </body>
</html>
