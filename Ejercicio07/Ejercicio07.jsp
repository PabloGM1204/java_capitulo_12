<%-- 
    Document   : Ejercicio07
    Created on : 14 feb 2023, 13:08:35
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css"/>
        <title>Ejercicio07</title>
    </head>
    <body>
        <h1>Menu de Elección</h1>
        <div class="container">
            <form method="post" action="resultado.jsp">
            <div class="divimg">
                        <img src="IMG/euro.png">
            </div>
                <div class="diveuros">
                    <input type="radio" name="cambio" value="eurosEnPesetas" checked="checked">Cantidad de euros:
                    <input type="number" name="cantidad">
                </div><br>
                <div class="divimg">
                    <img src="IMG/pestas.png">
                </div>
                <div class="diveuros">
                    <input type="radio" name="cambio" value="pesetasEnEuros">Cantidad de pesetas:
                </div>
                <input type="submit" value="Enviar">
            </form>
        </div>
    </body>
</html>
