<%-- 
    Document   : fibonacci
    Created on : 3 mar 2023, 11:17:52
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
      <%
        long f1 = 0;
        long f2 = 1;
        long aux;
        int n = Integer.parseInt(request.getParameter("n"));
        switch (n) {
          case 1:
            out.print("0");
            break;
          case 2:
            out.print("0 1");
            break;
          default:
            out.print("0 1");
            while(n > 2) {
              aux = f1;
              f1 = f2;
              f2 = aux + f2;
              out.print(" " + f2);
              n--;
            }
        }
      %>
    </div>
  </body>
</html>
