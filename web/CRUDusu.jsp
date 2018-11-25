

<%@page import="Clases.Metodos"%>
<%@page import="Clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
        
 <%
          String Mail_usu, nombre;
    Usuario e = new Usuario();
    HttpSession sesion = request.getSession(true);
    if(sesion.getAttribute("Mail_usu")!=null){    
            Mail_usu = (String)sesion.getAttribute("Mail_usu");
            e = Metodos.datosUsuario(Mail_usu);
            nombre = e.getNom();
            System.out.println(nombre);
            
           if(e.getRol()==3){
              
%>
    <body>
           <!-- Navbar Start-->
      <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="index.jsp" class="navbar-brand home"><img src="img/logo.png" alt="Logo" class="d-none d-md-inline-block"><img src="img/logo.png" alt="Promosoft logo" class="d-inline-block d-md-none"><span class="sr-only">Promosoft</span></a>
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
                          </ul>
                        
                        
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                
              </ul>
            </div>
                    

              <div col-md-6" ><a href="Cerrar" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Cerrar Sesion</span></a></div>
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
              <h1 class="h2">Bienvenido <%=nombre%></h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.jsp">Inicio</a></li>
                <li class="breadcrumb-item active">Gestion de usuarios</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div id="customer-account" class="col-lg-9 clearfix">
              <p class="lead">Aqui puede administrar a los usuarios registrados en el sistema.</p>
              
              <div class="box mt-5">
                <div class="heading">
                  <h3 class="text-uppercase">Gestionar usuarios</h3>
                </div>
                  
                  <form action="ConsultarEspecifico">
                       <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                           <a href="ConsultarEmpleados.jsp">Consultar la lista de todos los empleados</a>
                        <label for="Rol_con">Tipo de usuario</label>
                        <select name="rol">
                                <option value="2">Profesor</option>
                                <option value="1">Alumno</option>
                                </select>
                      </div>
                    </div>
                  </div>
                            <input type="submit" value="consultar">        
            </form>
                  
 <form action="ConsultarArea">
           
            </form> 
                <form>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                          
              
                     
                            
                       
                        <label for="Curp">Curp</label>
                        <input type="text" name="CURP" class="form-control" ondrop="return false" onpaste="return false" name="claveProf" onkeypress="return contraseña(event)" id="CURP_Usu">
                       <input type="submit" value="consultar">
                      </div>
                    </div>
                  </div>
                
                  <div class="text-center">
                    <button type="submit" class="btn btn-template-outlined"><i class="fa fa-save"></i> Guardar</button>
                  </div>
                </form>
              </div>
              
            </div>
            <div class="col-lg-3 mt-4 mt-lg-0">
              <!-- CUSTOMER MENU -->
              <div class="panel panel-default sidebar-menu">
                <div class="panel-heading">
                  <h3 class="h4 panel-title">USUARIO</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm">
                    <li class="nav-item"><a href="DetalleCuenta.jsp" class="nav-link active"><i class="fa fa-user"></i> Detalles Personales</a></li>
                    
                    <li class="nav-item"><a href="CRUDusu.jsp" class="nav-link"><i class="fa fa-list"></i>Proyecto</a></li>
                    <li class="nav-item"><a href="Cerrar" class="nav-link"><i class="fa fa-sign-out"></i> Cerrar sesion</a></li>
                  </ul>
                </div>
              </div>
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
    
     <%
            }else if(e.getRol()==2){
             response.sendRedirect("contenido.jsp");
                %>
                
                <%
            }else if(e.getRol()==1){ 
               response.sendRedirect("contenido.jsp");
                %>
               
                <%
        
            }
        }else{
            response.sendRedirect("contenido.jsp");
            System.out.println("no entró");
        }
    %>
  </body>
</html>
