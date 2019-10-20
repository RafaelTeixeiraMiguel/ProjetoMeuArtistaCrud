<%@page import="br.com.fatecpg.meuArtistaCrud.Musica"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Disco"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Db"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Artista"%>
<%-- 
    Document   : index
    Created on : 13/10/2019, 20:49:54
    Author     : Rafael Teixeira Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="../WEB-INF/jspf/head.jspf"%>
    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="../WEB-INF/jspf/sidebar.jspf"%>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <%@include file="../WEB-INF/jspf/topbar.jspf"%>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Músicas</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Artista</th>
                                                <th>Disco</th>
                                                <th>Duração</th>
                                                <th>Gênero</th>
                                                <th>Autoria</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Artista</th>
                                                <th>Disco</th>
                                                <th>Duração</th>
                                                <th>Gênero</th>
                                                <th>Autoria</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <%for(Musica musica: Db.getMúsicas()){%>
                                            <tr>
                                                <td><a href="detalhes.jsp?i=<%=Db.getMúsicas().indexOf(musica)%>"><%=musica.getNome() %></a></td>
                                                <td><%=musica.getArtista().getNome() %></td>
                                                <td><%=musica.getDisco().getNome() %></td>
                                                <td><%=musica.getDuração() %></td>
                                                <td><%=musica.getGênero() %></td>
                                                <td><%=musica.getAutoria()%></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <%@include file="../WEB-INF/jspf/footer.jspf"%>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <%@include file="../WEB-INF/jspf/scripts.jspf"%>

    </body>

</html>