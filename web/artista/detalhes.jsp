<%-- 
    Document   : detalhes
    Created on : 13/10/2019, 20:50:18
    Author     : Rafael Teixeira Miguel
--%>
<%@page import= "br.fatecpg.meuArtistaCrud.Disco"%>
<%@page import= "br.fatecpg.meuArtistaCrud.Db"%>
<%@page import= "br.fatecpg.meuArtistaCrud.Artista"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artistas - Crud</title>
    </head>
    <body>
          <%@include file= "../WEB-INF/jspf/menu.jspf" %>
        <h1>Artista</h1>
        <%if (request.getParameter("i")==null){%>
        <div>É preciso informar o indice do artista</div>
        <%}else{%>
        <%try{%>
        <%int i = Integer.parseInt(request.getParameter("i"));%>
        <%Artista artista = Db.getArtistas().get(i);%>
        <h2>Dados do Artista</h2>
        <h3>Nome</h3><div><%= artista.getNome()%></div>
        <h3>Gênero</h3><div><%= artista.getGênero()%></div>
        <h3>integrantes</h3>
        <div>
            <%for (String integrantes: artista.getIntegrantes()){%>
            <u><%= integrantes%></u>
            <%}%>
        </div>
        <%}catch(Exception e){%>
        <div>Artista não encontrado</div>
        <%}%>
       <%}%>
       <h3>Discos</h3>
       <table border="1">
           <tr>
               <th>Nome</th>
               <th>Artista</th>
               <th>Ano</th>
               <th>Gravadora</th>
               <th>Músicas</th>    
           </tr>
           <%for(Disco disco: artista.getDiscos()){%>
           <tr>
               <td><%= disco.getNome() %></td>
               <td><%= disco.getAritsta().getNome() %></td>
               <td><%= disco.getAno() %></td>
               <td><%= disco.getGravadora() %></td>
               <td><%= disco.getMusicas().size() %></td>
           </tr>
       </table>
    </body>
</html>
