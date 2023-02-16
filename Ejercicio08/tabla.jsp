<%-- 
    Document   : tabla
    Created on : 16 feb 2023, 18:58:02
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="CSS/style.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TABLA</title>
    </head>
    <body>
        <% 
            int n = Integer.parseInt(request.getParameter("number")); 
            int m = Integer.parseInt(request.getParameter("mult"));
        %>
        <h1>Tabla de multiplicar</h1>
        <table>
            <%
              for(int i = 0; i<=m; i++){
                    out.print("<tr><td>"+n+" x "+i+"</td><td> = </td><td>"+i*n+"</td>");
                }  
            %>
        </table>
    </body>
</html>
