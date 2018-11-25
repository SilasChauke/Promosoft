<%-- 
    Document   : Proyecto1
    Created on : 5/10/2018, 02:00:18 PM
    Author     : alberto
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.Metodos"%>
<%@page import="java.sql.Statement"%>
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

            <div class="login"><a href="registro.jsp" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Iniciar Sesion</span></a></div>
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
    
                
                
                                
                  <%  
                      
                      
                     int id = Integer.parseInt(request.getParameter("id"));
                      
                    try{
                    Statement st = null;
                    ResultSet rs = null;
                    Connection con = Metodos.getConnection();
                    st = con.createStatement();
  rs = st.executeQuery("SELECT * FROM proyectos WHERE Id_Proy="+id);
                    while(rs.next()){
                %>
              <h1 class="h2"><%=rs.getString("Nom_Proy")%></h1>
              
            </div>     
                <%
                    } rs.close();
                        st.close();
                        con.close();
                    }catch(Exception e){
                        System.out.println("El error es: "+e.getMessage());
                        System.out.println(e.getStackTrace());
                    }%>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="protafolio.jsp">proyectos</a></li>
                <li class="breadcrumb-item active">Proyecto de ejemplo</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <section class="bar no-padding-bottom">
            <div class="row">
              <div class="col-md-12">
                <div class="heading">
                  <h2>Resumen</h2>
                </div>
                <p class="lead no-mb">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
              </div>
            </div>
          </section>
          <section class="bar">
            <div class="row portfolio-project">
              <div class="col-sm-8">
                <div class="project owl-carousel mb-4">
                  <div class="item"><img src="img/main-slider1.jpg" alt="" class="img-fluid"></div>
                  <div class="item"><img src="img/main-slider2.jpg" alt="" class="img-fluid"></div>
                  <div class="item"><img src="img/main-slider3.jpg" alt="" class="img-fluid"></div>
                  <div class="item"><img src="img/main-slider4.jpg" alt="" class="img-fluid"></div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="project-more">
                  <h4>Desarrolador</h4>
                  <p>Pietro Filippi</p>
                  <h4>Funciones</h4>
                  <p>Consulting, Webdesign, Print</p>
                  <h4>Tecnologias utilizadas</h4>
                  <p>PHP, HipHop, Break-dance</p>
                  <h4>Fecha de salida</h4>
                  <p>10/2013 - 06/2014</p>
                </div>
              </div>
              <div class="col-sm-12">
                <div class="heading">
                  <h3>Descripcion del proyecto</h3>
                </div>
                <p>Bringing unlocked me an striking ye perceive. Mr by wound hours oh happy. Me in resolution pianoforte continuing we. Most my no spot felt by no. He he in forfeited furniture sweetness he arranging. Me tedious so to behaved written account ferrars moments. Too objection for elsewhere her preferred allowance her. Marianne shutters mr steepest to me. Up mr ignorant produced distance although is sociable blessing. Ham whom call all lain like.</p>
                <p>To sorry world an at do spoil along. Incommode he depending do frankness remainder to. Edward day almost active him friend thirty piqued. People as period twenty my extent as. Set was better abroad ham plenty secure had horses. Admiration has sir decisively excellence say everything inhabiting acceptance. Sooner settle add put you sudden him.</p>
                <section>
                  <div class="row portfolio">
                    <div class="col-md-12">
                      <div class="heading">
                        <h3>Proyectos relacionados</h3>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="box-image">
                        <div class="image"><img src="img/portfolio-1.jpg" alt="" class="img-fluid">
                          <div class="overlay d-flex align-items-center justify-content-center">
                            <div class="content">
                              <div class="name no-mb">
                                <h3><a href="proyecto1.jsp" class="color-white">Proyecto</a></h3>
                              </div>
                              <div class="text">
                                <p class="d-none">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                                <center><p class="buttons"><a href="proyecto1.jsp" class="btn btn-template-outlined-white">Ver</a></p></center>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="box-image">
                        <div class="image"><img src="img/portfolio-2.jpg" alt="" class="img-fluid">
                          <div class="overlay d-flex align-items-center justify-content-center">
                            <div class="content">
                              <div class="name no-mb">
                                <h3><a href="proyecto1.jspl" class="color-white">Proyecto</a></h3>
                              </div>
                              <div class="text">
                                <p class="d-none">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                                 <center><p class="buttons"><a href="proyecto1.jsp" class="btn btn-template-outlined-white">Ver</a></p></center>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="box-image">
                        <div class="image"><img src="img/portfolio-3.jpg" alt="" class="img-fluid">
                          <div class="overlay d-flex align-items-center justify-content-center">
                            <div class="content">
                              <div class="name no-mb">
                                <h3><a href="proyecto1.jsp" class="color-white">Proyecto</a></h3>
                              </div>
                              <div class="text">
                                <p class="d-none">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                                 <center><p class="buttons"><a href="proyecto1.jsp" class="btn btn-template-outlined-white">Ver</a></p></center>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="box-image">
                        <div class="image"><img src="img/portfolio-4.jpg" alt="" class="img-fluid">
                          <div class="overlay d-flex align-items-center justify-content-center">
                            <div class="content">
                              <div class="name no-mb">
                                <h3><a href="proyecto1.jsp" class="color-white">Proyecto</a></h3>
                              </div>
                              <div class="text">
                                <p class="d-none">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                                < <center><p class="buttons"><a href="proyecto1.jsp" class="btn btn-template-outlined-white">Ver</a></p></center>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </section>
              </div>
            </div>
          </section>
        </div>
      </div>
      <!-- GET IT-->
      
      <!-- FOOTER -->
        <footer class="main-footer">   
       
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md">
                <p>&copy; 2018. Promosoft CECyT 9</p>
              </div>
              <div class="col-lg-8 text-right text-center-md">
                <p>Conoce nuestros <a href="TyC.html">Terminos y condiciones y politicas de privacidad</a></p>
                <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
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
  </body>
</html>
