<%-- 
    Document   : detalhes
    Created on : 13/10/2019, 20:50:18
    Author     : Rafael Teixeira Miguel
--%>
<%@page import= "br.com.fatecpg.meuArtistaCrud.Disco"%>
<%@page import= "br.com.fatecpg.meuArtistaCrud.Db"%>
<%@page import= "br.com.fatecpg.meuArtistaCrud.Artista"%> 
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
                                <h6 class="m-0 font-weight-bold text-primary">Detalhes</h6>
                            </div>
                            <div class="card-body">
                                <%if (request.getParameter("i")==null){%>
                                <div>É preciso informar o indice do artista</div>
                                <%}else{%>
                                <%try{%>
                                <%int i = Integer.parseInt(request.getParameter("i"));%>
                                <%Artista artista = Db.getArtista().get(i);%>
                                <h4>Nome</h4><div><%= artista.getNome()%></div>
                                <h4>Gênero</h4><div><%= artista.getGenero()%></div>
                                <h4>Integrantes</h4>
                                <div>
                                    <%for (String integrantes: artista.getIntegrantes()){%>
                                    <u><%= integrantes%></u>
                                        <%}%>
                                </div>
                            </div>
                        </div>
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Discos</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Artista</th>
                                                <th>Ano</th>
                                                <th>Gravadora</th>
                                                <th>Músicas</th>    
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Artista</th>
                                                <th>Ano</th>
                                                <th>Gravadora</th>
                                                <th>Músicas</th>    
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <%for(Disco disco: artista.getDiscos()){%>
                                            <tr>
                                                <td><%= disco.getNome() %></td>
                                                <td><%= disco.getArtista().getNome() %></td>
                                                <td><%= disco.getAno() %></td>
                                                <td><%= disco.getGravadora() %></td>
                                                <td><%= disco.getMusicas().size() %></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
                                    <%}catch(Exception e){%>
                                    <div>Artista não encontrado</div>
                                    <%}%>
                                    <%}%>
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