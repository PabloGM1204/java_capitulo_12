<%@ page import="modelos.Carta" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/CSS/style.css" type="text/css">
</head>
<body>
    
    <h1 class="titulo">Resultado</h1>
    <%  
        Carta carta2 = new Carta();
        int comp = Integer.parseInt(request.getParameter("comp"));
        int puntos = (Integer)session.getAttribute("puntos");
    %>
    <div class="cartas">
        <% 
            Carta carta1 = (Carta)session.getAttribute("carta");
            out.print(carta1);
            out.print(carta2);
        %>
    </div>
    <div>
        <%
            int v = carta1.valor();
            int v2 = carta2.valor();
            if(v == 0){
                v = 10;
            }
            if(v2 == 0){
                v2 = 10;
            }
            if(((comp == 1) && (v>v2)) || ((comp == 0) && (v == v2)) || ((comp == -1) && (v2>v))){
                out.print("<h2 class=\"frase\">Has ganado, toma 10 puntos</h2>");
                out.print("<h2 class=\"frase\">Puntos totales: "+(puntos+10)+"</h2>");
                puntos += 10;
            }else{
                out.print("<h2 class=\"frase\">Has perdido</h2>");
                out.print("<h2 class=\"frase\">Puntos totales: "+(puntos-10)+"</h2>");
                puntos -= 10;
            }
            session.setAttribute("puntos", puntos);
        %>
    </div>
    <div class="botones">
        <form method="post" action="index.jsp?punts=puntos">
            <input type="submit" value="JUGAR">
        </form>
    </div>
</body>
</html>