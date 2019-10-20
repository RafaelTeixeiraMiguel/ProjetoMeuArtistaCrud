<%-- 
    Document   : lista
    Created on : 13/10/2019, 20:50:09
    Author     : Rafael Teixeira Miguel
--%>


<%@page import="br.com.fatecpg.meuArtistaCrud.Musica"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Música</title>
    </head>
    <body>
        <h1>Música</h1>
        <% if (request.getParameter("i")==null) {%>
        <div> É preciso informar o índice do artista</div>
        <%}else{%>
            <%try{%>
                <%int i = Integer.parseInt(request.getParameter("i"));%>
                <%Musica musica = Db.getMúsicas().get(i);%>
                <h2>Dados da música</h2>
                <h3> Nome</h3><div><%= musica.getNome()%></div>
                <h3>Gênero</h3><div><%= musica.getGênero()%></div>
                <h3>Duração</h3><div><%= musica.getDuração()%></div>
                <h3>Autoria</h3><div><%= musica.getAutoria()%></div>
                <h3>Artista</h3><div><%= musica.getArtista().getNome()%></div>
                <h3>Disco</h3><div><%= musica.getDisco().getNome()%></div>
    
            <%}catch(Exception e){%>
            <div> Música não encontrada</div>
            <%}%>
        <%}%>

    </body>
</html>
