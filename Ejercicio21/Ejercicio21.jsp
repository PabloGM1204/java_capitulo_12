<%-- 
    Document   : Ejercicio21
    Created on : 15 mar 2023, 18:18:04
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejercicio21</title>
    <link rel="stylesheet" href="CSS/style.css"/>
  </head>
  <body>
    
    <h1 style="text-align: center;">Máquina de helados</h1>
    <p style="text-align: center;">Seleccione los porcentajes para preparar un helado a su gusto.</p>
    <form action="helado.jsp">
    
      <div class="contenedor">
        <div class="sabor">
          <img src="img/chocolate.jpg" width="200px"><br>
          Chocolate
          <input type="number" value=0 min="0" max="100" name="chocolate"> %
        </div>
        <div class="sabor">
          <img src="img/fresa.jpg" width="200px"><br>
          Fresa:
          <input type="number" value=0 min="0" max="100" name="fresa"> %
        </div>
        <div class="sabor">
          <img src="img/vainilla.jpg" width="200px"><br>
          Vainilla:
          <input type="number" value=0 min="0" max="100" name="vainilla"> %
        </div>
      </div>
      
      <div class="contenedor">
        <div>
          <input type="submit" value="Preparar helado">
        </div>
      </div>
      
    </form>
    
    <div class="error">
      <p>
      <%=
        session.getAttribute("error") == null ?
                "" : session.getAttribute("error")
      %>
      <% session.removeAttribute("error"); %>
      </p>
    </div>
  </body>
</html>