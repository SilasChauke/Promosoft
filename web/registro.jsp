<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Promosoft</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.violet.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png">
     <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
    <script src="https://rawgit.com/jeresig/jquery.hotkeys/master/jquery.hotkeys.js"></script>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <%
    HttpSession sesion = request.getSession(true);
        if(sesion.getAttribute("Mail_usu")!=null){
            response.sendRedirect("contenido.jsp");
        }else{
%>
  <body>
    <div id="all">
    <!-- Navbar Start-->
      <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="index.jsp" class="navbar-brand home"><img src="img/logo.png" alt="Logo" class="d-none d-md-inline-block"><img src="img/logo.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">Promosoft</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Mostrar</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
              <ul class="nav navbar-nav ml-auto">
                
                <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Proyectos<b class="caret"></b></a>
                  <ul class="dropdown-menu megamenu">
                    <li>
                      <div class="row">
                        <div class="col-lg-6"><img src="img/template-easy-customize.png" alt="" class="img-fluid d-none d-lg-block"></div>
                        <div class="col-lg-3 col-md-6">
                          <h5>Portafolio</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="protafolio.jsp" class="nav-link">Articulos</a></li>
                            <li class="nav-item"><a href="Contacto.jsp" class="nav-link">Contacto</a></li>
                            
                        
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                
              </ul>
            </div>

              
            <div id="search" class="collapse clearfix">
              <form role="search" class="navbar-form">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </header>
      <!-- Navbar End-->
      
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">Registro / Inicio de sesión</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.jsp">Inicio</a></li>
                <li class="breadcrumb-item active">Registro / Inicio de sesión</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div class="box">
                <h2 class="text-uppercase">Registarse</h2>
                <p class="lead">¿No estas registrado aun?</p>
                <p>Hazlo ahora, es facil y no te tomara mas de 5 minutos!</p>
              
                <hr>
               <form action="Registrar" method="POST" class="form-horizontal" id="registro" name="registro">
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" maxlength="19" placeholder="Nombre de usuario" id="nom_usu" class="form-control" ondrop="return false" onpaste="return false" name="nom_usu" onkeypress="return soloLetras(event)" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" maxlength="18" placeholder="Curp" id="Curp_usu" class="form-control" ondrop="return false" onpaste="return false" name="Curp_usu" onkeypress=" return curp(event)" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text"  placeholder="Correo" id="Mail_usu" class="form-control" ondrop="return false" onpaste="return false" name="Mail_usu"  required="">
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password"  placeholder="Contraseña" id="pass_usu" class="form-control" ondrop="return false" onpaste="return false" name="pass_usu" required="">
                        </div>
                    </div>
                   <div class="form-group">
                        <div class="col-md-12">
                            <input type="password"  placeholder="Verifica tu contraseña" id="pass_usu2" class="form-control" ondrop="return false" onpaste="return false" name="pass_usu2" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <select name="Id_rol" class="form-control" id="Id_Rol">
                                <option value="1">Selecciona tu rol (por defecto Estudiante)</option>
                                <option value="1">Estudiante</option>
                                <option value="2">Profesor</option>
                            </select>
                          
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        <p class="text-center">al hacer clic en regístrate aceptas los <a href="TyC.html">términos y condiciones.</a></p>
                       <p class="text-center">
                            <input type="submit" class="btn btn-template-outlined" value="Registrarse" onclick="return Validar()">
                       </p>
                    </div>
                </form>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="box">
                <h2 class="text-uppercase">Iniciar sesion</h2>
                <p class="lead">¿Ya tienes una cuenta?</p>
                <p class="text-muted">Inicia sesion ahora y descubre todas las posibilidades que ofrecemos</p>
                <hr>
                 <form method="POST" action="IniciarSesion" class="form-horizontal" name="iniciar">
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" placeholder="Email" id="Email_usu" class="form-control" name="Mail_usu"  ondrop="return false" onkeypress="return correo(event)" onpaste="return false"   required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" placeholder="Contraseña" id="pass_usu" class="form-control" name="pass_usu" onkeypress="return contrasena(event)" maxlength="19" ondrop="return false" onpaste="return false"  required="">
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        
                            <p class="text-center">
                            <input type="submit" class="btn btn-template-outlined" id="Iniciar" value="Iniciar sesión">
                            </p>
                    </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- FOOTER -->
      <footer class="main-footer">   
       
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md">
                <p>&copy; 2018. Promosoft CECyT 9</p>
              </div>
              <div class="col-lg-8 text-right text-center-md">
                <p>Conoce nuestros <a href="TyC.html">Terminos y condiciones y politicas de privacidad</a></p>
              
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <!-- Javascript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
    <script src="vendor/jquery.counterup/jquery.counterup.min.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
    <script src="js/front.js"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
    <script src="https://rawgit.com/jeresig/jquery.hotkeys/master/jquery.hotkeys.js"></script>
     <script src="js/validacion.js"></script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

  </body>
</html>
<%
    }
%>