<%-- 
    Document   : index
    Created on : 14/10/2019, 20:46:10
    Author     : Rafael Teixeira Miguel
--%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Usuario"%>
<%@page import="br.com.fatecpg.meuArtistaCrud.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("entrar") != null){
        String usuario = request.getParameter("user");
        String senha = request.getParameter("pass");
        
        Usuario user = new Usuario();
        user.setUsuario(usuario);
        user.setSenha(senha);
        
        if(Db.autenticaUsuario(user)){
            response.sendRedirect("home.jsp");
        }
    }
    
%>
<html lang="en">

    <head>
        <%@include file="../WEB-INF/jspf/head.jspf"%>
    </head>

    <body class="bg-gradient-primary">

        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Bem vindo ao projeto Meu Artista!</h1>
                                        </div>
                                        <form class="user" action="index.jsp" method="POST">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" name="user" id="user" aria-describedby="emailHelp" placeholder="Usuário">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" name="pass" id="pass" placeholder="Senha">
                                            </div>
                                            <button type="submit" name="entrar" class="btn btn-primary btn-user btn-block" value="entrar">
                                                Entrar
                                            </button>
                                            <%if(request.getParameter("entrar") != null){%>
                                                <p class="small" center style="color:red">Usuário ou senha inválido</p>
                                            <%}%>
                                        </form>
                                        <hr>
                                        <div class="text-center">
                                            <a class="small" href="forgot-password.html">Esqueceu a senha?</a>
                                        </div>
                                        <div class="text-center">
                                            <a class="small" href="register.html">Criar uma conta!</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

    </body>

</html>
