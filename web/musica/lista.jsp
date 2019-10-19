<%@page import="br.com.fatecpg.meuArtistaCrud.Musica"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Disco"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Db"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Artista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%@include file="../WEB-INF/jspf/head.jspf"%>
        <%@include file="../WEB-INF/jspf/footer.jspf"%>
        <%@include file="../WEB-INF/jspf/scripts.jspf"%>
        <%@include file="../WEB-INF/jspf/sidebar.jspf"%>
        <%@include file="../WEB-INF/jspf/topbar.jspf"%>
        <h1>Musicas</h1>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Artista</th>
                <th>Disco</th>
                <th>Duração</th>
                <th>Gênero</th>
                <th>Autoria</th>
            </tr>
            <%for(Musica musica: Db.getMúsicas()){%>
            <tr>
                <td><%=musica.getNome() %></td>
                <td><%=musica.getArtista().getNome() %></td>
                <td><%=musica.getDisco().getNome() %></td>
                <td><%=musica.getDuração() %></td>
                <td><%=musica.getGênero() %></td>
                <td><%=musica.getAutoria()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
