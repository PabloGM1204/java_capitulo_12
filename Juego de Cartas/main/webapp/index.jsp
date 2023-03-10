<%-- 
    Document   : Juego
    Created on : 21 feb 2023, 17:38:17
    Author     : pablo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/CSS/style.css"/>
    <title>Juego de cartas</title>
</head>
<body>
    <% 
        Integer puntos = (Integer)session.getAttribute("puntos");
        if (puntos == null) {
            puntos = 0;
        }
    %>
    <h1 class="titulo">Juego de cartas</h1>
    <div class="datos formulario">
        <form method="post" action="juego.jsp">
            <h2 class="frase">Cuanto dinero quieres meter:</h2>
            <% out.print("<h2 class=\"frase\">Puntos ganados anteriormente: "+puntos+"</h2>"); %>
            <input type="number" class="input-number" name="cantidad" min="10"><br>
            <input type="submit" value="JUGAR">
        </form>
    </div>
    <div class="reglas">
        <h2 class="frase">REGLAS</h2>
        <p>Tienes que adivinar si la carta de la izquierda es mayor, menor o igual que la carta de la derecha.</p>
        <p>Pista: preguntate la carta que veo es mayor menor o igual que la otra carta.</p>
        <p>Si ganas recibes 10 puntos, si pierdes pierdes 10 puntos.</p>
    </div>
</body>
</html>
