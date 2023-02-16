<%-- 
    Document   : resultado
    Created on : 14 feb 2023, 14:03:25
    Author     : pablo
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css"/>
        <title>Resultado</title>
    </head>
    <body>
        <h1>Conversor</h1>
        <%
          Double c = Double.parseDouble(request.getParameter("cantidad"));
          DecimalFormat formatoEuros = new DecimalFormat("0.00");
          if (request.getParameter("cambio").equals("eurosEnPesetas")) {
            out.print(formatoEuros.format(c) + " euros son " + Math.round(c * 166.386) + " pesetas.");
          } else {
            out.print(Math.round(c) + " pesetas son " + formatoEuros.format(c * 0.006) + " euros.");
          }
        %>
    </body>
</html>
