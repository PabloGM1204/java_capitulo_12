<%-- 
    Document   : calendario
    Created on : 21 feb 2023, 17:40:53
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <<link rel="stylesheet" href="CSS/style.css"/>
        <title>Calendario</title>
    </head>
    <body>
        <h1><% out.print(request.getParameter("mes") + " " + request.getParameter("anio"));%></h1>
        <%
            int columna = 1;
            int diasTotales = Integer.parseInt(request.getParameter("diastotales"));
            int dia1 = Integer.parseInt(request.getParameter("dia1"));
        %>
        <table>
            <tr><th>lunes</th><th>martes</th><th>miércoles</th><th>jueves</th><th>viernes</th><th>sábado</th><th>domingo</th></tr>
            <tr>
            <%
            for (int i = 1; i < diasTotales + dia1; i++) {
                if (i >= dia1) {
                    out.print("<td>" + (i - dia1 + 1) + "</td>");
                } else {
                    out.print("<td> </td>"); // las primeras celdas quedan vacías
                }
                columna++;
                if (columna == 8) { // salta a la siguiente columna
                    out.println("</tr><tr>");
                    columna = 1;
                }
            }
            %>
            </td></tr>
            </table>
        </form>
    </body>
</html>
