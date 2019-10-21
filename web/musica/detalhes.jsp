<%-- 
    Document   : lista
    Created on : 13/10/2019, 20:50:09
    Author     : Rafael Teixeira Miguel
--%>
<%@page import= "br.com.fatecpg.meuArtistaCrud.Db"%>
<%@page import= "br.com.fatecpg.meuArtistaCrud.Artista"%> 
<%@page import= "br.com.fatecpg.meuArtistaCrud.Disco"%> 
<%@page import= "br.com.fatecpg.meuArtistaCrud.Musica"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String aux = ""; %>
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
                                <h6 class="m-0 font-weight-bold text-primary">Música</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <body>         
                                        <% if (request.getParameter("i")==null) {%>
                                        <div> É preciso informar o índice da música</div>
                                        <%}else{%>
                                        <%try{%>
                                        <%int i = Integer.parseInt(request.getParameter("i"));%>
                                        <%Musica musica = Db.getMúsicas().get(i);%>
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
