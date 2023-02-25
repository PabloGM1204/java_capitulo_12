<%@ page import="modelos.Carta" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/CSS/style.css" type="text/css">
</head>
<body>
    <%
        Carta carta = new Carta();
        int cant = Integer.parseInt(request.getParameter("cantidad"));
        int comp = 0;
    %>
    <h1 class="titulo">Elige una de las opciones</h1>
    <h2 class="frase"><% out.print("Tienes "+cant+" puntos"); %></h2>
    <div class="cartas">
        <% 
            out.print(carta);
            session.setAttribute("puntos", cant);
            session.setAttribute("valor", carta.valor());
            session.setAttribute("carta", carta);
        %>
        <img src="assets/IMG/reverso2.png" class="carta">
        <br>
    </div>
    <div class="botones">
        <form method="post" action="resultado.jsp?comp=1">
            <input type="submit" name="comparacion" value="Mayor">
        </form>
        <form method="post" action="resultado.jsp?comp=0">
            <input type="submit" name="comparacion" value="Igual">
        </form>
        <form method="post" action="resultado.jsp?comp=-1">
            <input type="submit" name="comparacion" value="Menor">
        </form>
    </div>
</body>
</html>