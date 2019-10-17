<%-- 
    Document   : lista
    Created on : 13/10/2019, 20:50:09
    Author     : Rafael Teixeira Miguel
--%>
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
        <h1>Artistas</h1>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Gênero</th>
                <th>Integrantes</th>
                <th>Discos</th>
            </tr>
            <%for(Artista artista: Db.getArtistas()){%>
            <tr>
                <td>
                    <a href="detalhes.jsp?i=<%= Db.getArtistaIndex(artista)%>">
                        <%= artista.getNome()%>
                    </a>
                </td>
                <td><%= artista.getNome()%></td>
                <td><%= artista.getGênero()%></td>
                <td><%for(String integrante: artista.getIntegrantes()){%>
                   <%= integrante %><br/></td>
                        <%}%>
                <td><%= artista.getDiscos()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
