<%-- 
    Document   : index
    Created on : 8 mar 2023, 17:42:44
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejercicio 16</title>
    <link href="estilos.css" rel="stylesheet"/>
  </head>
  <body>
    <div id="principal">
      <h1>Esta aplicación muestra la tirada aleatoria de tres dados de póker.</h1>
      <p>
        <%
          String[] cara = {"IMG/as.png", "IMG/j.png", "IMG/q.png", "IMG/k.png", "IMG/siete.png", "IMG/ocho.png"};
          for (int i = 0; i < 3; i++) {
            out.print("<img src=\"" + cara[(int)(Math.random()*6)] +"\">");
          }
        %>
      </p>
      <h1>Pulsa la tecla <b>F5</b> para ejecutar de nuevo la aplicación.</h1>
    </div>
  </body>
</html>
