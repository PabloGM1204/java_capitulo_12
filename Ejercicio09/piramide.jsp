<%-- 
    Document   : piramide
    Created on : 16 feb 2023, 19:47:46
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="CSS/style.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Piramide</title>
    </head>
    <body>
        <% int a = Integer.parseInt(request.getParameter("alt"));%>
        <h1 class="title">Piramide</h1>
        <div>
        <%
            int altura = 1;
            int i = 0;
            int espacios = a - 1;
            while (altura <= a) {
                // inserta espacios (imagenes en blanco)
                for (i = 1; i <= espacios; i++) {
                    out.print("<img src=\"IMG/blanco.jpg\">");
                }
                // pinta la línea
                for (i = 1; i < altura * 2; i++) {
                    out.print("<img src=\"IMG/gatoloco.jpg\">");
                }
                out.println("</br>");
                altura++;
                espacios--;
            }
        %>
        </div>
    </body>
</html>
