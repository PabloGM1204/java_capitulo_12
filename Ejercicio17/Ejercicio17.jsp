<%-- 
    Document   : Ejercicio17
    Created on : 8 mar 2023, 17:49:16
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
    <h1>Configurador de vehículo</h1>
    <form method="get" action="coche.jsp">
      Tapicería:
      <select name="tapiceria">
        <option value="negro" selected="selected">Cuero negro</option>
        <option value="berenjena">Color berenjena</option>
        <option value="blanco">Blanco marfil</option>
      </select>
      <br>
      <br>
      Tipo de moldura interior:
      <select name="moldura">
        <option value="carbono" selected="selected">Fibra de carbono</option>
        <option value="madera">Madera de nogal</option>
      </select>
      <br>
      <br>
      <input type="submit" value="Aceptar">
    </form>
  </body>
</html>
