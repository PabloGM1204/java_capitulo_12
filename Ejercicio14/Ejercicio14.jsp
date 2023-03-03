<%-- 
    Document   : Ejercicio14
    Created on : 3 mar 2023, 11:15:59
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejercicio 14</title>
    <link href="CSS.css" rel="stylesheet"/>
  </head>
  <body>
    <h1>Serie de Fibonacci</h1>
    <div id="principal">
    <form method="post" action="fibonacci.jsp">
      Esta aplicación muestra los <b>n</b> primeros números de la serie de Fibonacci.<br><br>
      Por favor, introduzca <b>n</b>:
      <input type="number" min="1" name="n">
      <input type="submit" value="Aceptar">
    </form>
    </div>
  </body>
</html>
