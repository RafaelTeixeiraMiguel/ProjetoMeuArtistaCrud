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

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Guia</h1>
                        </div>

                        <!-- Content Row -->

                        <div class="row">
                            <div class="col-lg-4">

                                <!-- Default Card Example -->
                                <div class="card mb-4">
                                    <div class="card-header">
                                        Artistas
                                    </div>
                                    <div class="card-body">
                                        Desenvolvido por Afonso
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-4">

                                <!-- Default Card Example -->
                                <div class="card mb-4">
                                    <div class="card-header">
                                        Discos
                                    </div>
                                    <div class="card-body">
                                        Desenvolvido por {nome}
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-4">

                                <!-- Default Card Example -->
                                <div class="card mb-4">
                                    <div class="card-header">
                                        Músicas
                                    </div>
                                    <div class="card-body">
                                        Desenvolvido por {Nome}
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Colaboradores</h1>
                        </div>
                        <div class="row">
                            <div class="col-lg-3">

                                <!-- Default Card Example -->
                                <div class="card mb-4">
                                    <div class="card-header">
                                        Afonso Bento
                                    </div>
                                    <img class="card-img-top" src="img/afonso.jpg" alt="Card image cap">
                                    <div class="card-body">

                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-3">

                                <!-- Default Card Example -->
                                <div class="card mb-4">
                                    <div class="card-header">
                                        Marina Lopes
                                    </div>
                                    <img class="card-img-top" src="img/marina.jpg" alt="Card image cap">
                                    <div class="card-body">

                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-3">

                                <!-- Default Card Example -->
                                <div class="card mb-4">
                                    <div class="card-header">
                                        Matusalém
                                    </div>
                                    <img class="card-img-top" src="img/matusalem.jpg" alt="Card image cap">
                                    <div class="card-body">

                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-3">

                                <!-- Default Card Example -->
                                <div class="card mb-4">
                                    <div class="card-header">
                                        Rafael Teixeira
                                    </div>
                                    <img class="card-img-top" src="img/rafael.jpg" alt="Card image cap">
                                    <div class="card-body">

                                    </div>
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
