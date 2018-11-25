<%-- 
    Document   : index
    Created on : 25-sep-2018, 12:02:54
    Author     : Eduardo
--%>

<%@page import="Clases.Metodos"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
  </head>
  <%
    HttpSession sesion = request.getSession(true);
        if(sesion.getAttribute("Mail_usu")!=null){
            response.sendRedirect("contenido.jsp");
        }else{
            
 
            try{
                    Statement st = null;
                    ResultSet rs = null;
                    Connection con = Metodos.getConnection();
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT * FROM usuarios WHERE Id_Usu = (SELECT MAX(Id_Usu) from usuarios)");
                    while(rs.next()){
            
%>
  <body>
    <div id="all">
      
      <!-- Login Modal-->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">Inicio de sesion</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                 <form method="POST" action="IniciarSesion" class="form-horizontal" name="iniciar">
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" placeholder="Email" id="Email_usu" class="form-control" name="Mail_usu" onkeypress="return correo(event)"  ondrop="return false" onpaste="return false"   required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" placeholder="Contraseña" id="pass_usu" class="form-control" name="pass_usu" onkeypress="return contrasena(event)"  ondrop="return false" onpaste="return false"  required="">
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
      <!-- Login modal end-->
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
                    

              <div col-md-6" ><a href="#" data-toggle="modal" data-target="#login-modal" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">Inicia sesion</span></a><a href="registro.jsp" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Registrate</span></a></div>
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
      
      <section class="no-mb relative-positioned">
        <!--
        *** JUMBOTRON ***
        _________________________________________________________
        -->
        <div style="background: url('img/photogrid.jpg') center center repeat; background-size: cover;" class="jumbotron relative-positioned color-white text-md-center">
          <div class="dark-mask mask-primary"></div>
          <div class="container">
            <div class="row mb-small">
              <div class="col-md-12 text-center">
                <h1 class="text-uppercase">Promosoft</h1>
                <h2 class="text-uppercase">Una nueva forma de dar a conoce proyectos.</h2>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-small"><img src="img/template-easy-code.png" alt="..." class="img-fluid"></div>
              <div class="col-md-6 text-center-sm">
                  <p>Sube tu propio proyecto, haz que tenga relevancia y que la gente conozca tu idea.</p>
                <p><a href="registro.jsp" class=" btn btn-template-outlined-white">Comieza ahora</a></p>
              </div>
            </div>
          </div>
        </div>
        <!-- *** JUMBOTRON END ***-->
      </section>
     
      <section class="bar background-pentagon no-mb">
        <div class="container">
          <div class="row showcase text-center">
          
            <div class="col-md-7 col-sm-3">
              <div class="item">
                <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-users"></i></div>
                <h4><span class="h1 counter"><%=rs.getInt("Id_Usu")%></span><br>Desarrolladores</h4>
                <%
                    } rs.close();
                        st.close();
                        con.close();
                    }catch(Exception e){
                        System.out.println("El error es: "+e.getMessage());
                        System.out.println(e.getStackTrace());
                    }%>
                
              </div>
            </div>
            <div class="col-md-3 col-sm-6">
              <div class="item">
                    <%  
                    try{
                    Statement st = null;
                    ResultSet rs = null;
                    Connection con = Metodos.getConnection();
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT * FROM proyectos WHERE Id_Proy = (SELECT MAX(Id_Proy) from proyectos)");
                    while(rs.next()){
                %>
                  
                <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-copy"></i></div>
                <h4><span class="h1 counter"><%=rs.getInt("Id_Proy")%></span><br>Proyectos</h4>
                
                 <%
                    } rs.close();
                        st.close();
                        con.close();
                    }catch(Exception e){
                        System.out.println("El error es: "+e.getMessage());
                        System.out.println(e.getStackTrace());
                    }%>
              </div>
            </div>
            
          </div>
        </div>
      </section>
      <section class="bar background-white no-mb">
        <div data-animate="fadeInUpBig" class="container"> 
          <div class="row">
            <div class="col-md-12">
              <div class="heading text-center">
                <h2>Proyectos destacados</h2>
              </div>
              <p class="lead">Estos son algunos de nuestros proyectos destacados.</p>
              <div class="row portfolio text-center color-white">
                <div class="col-md-4">
                  <div class="box-image">
                       <%  
                    try{
                    Statement st = null;
                    ResultSet rs = null;
                    Connection con = Metodos.getConnection();
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT * FROM proyectos WHERE Id_Proy = 1");
                    while(rs.next()){
                %>
               
                <form method="POST" action="proyecto1.jsp">
                    <input type="hidden" name="id" value="1">
               
                
                
                    <div class="image"><img src="img/portfolio-1.jpg" alt="" class="img-fluid">
                      <div class="overlay d-flex align-items-center justify-content-center">
                        <div class="content">
                          <div class="name">
                            <h3><a id="num" href="proyecto1.jsp" class="color-white"><%=rs.getString("Nom_Proy")%></a></h3>
                          </div>
                           <div class="text">
                            <p class="d-sm-none">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                            <center><input type="submit" class="btn btn-template-outlined-white" value="ver"></center>
                           
                          </div>
                          
                          
                          
                          
                          <%
                             
                              
                              
                              
                    } rs.close();
                        st.close();
                        con.close();
                    }catch(Exception e){
                        System.out.println("El error es: "+e.getMessage());
                        System.out.println(e.getStackTrace());
                    }%>
                         
                        </div>
                      </div>
                    </div>
                                               </form>

                  </div>
                </div>
                            <%  
                    try{
                    Statement st = null;
                    ResultSet rs = null;
                    Connection con = Metodos.getConnection();
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT * FROM proyectos WHERE Id_Proy = 2");
                    while(rs.next()){
                %>
               
                <div class="col-md-4">
                  <div class="box-image">
                      
                      <form method="POST" action="proyecto1.jsp">
                    <input type="hidden" name="id" value="2">
                    
                    
                    <div class="image"><img src="img/portfolio-2.jpg" alt="" class="img-fluid">
                      <div class="overlay d-flex align-items-center justify-content-center">
                        <div class="content">
                          <div class="name">
                            <h3><a href="proyecto1.jsp" class="color-white"><%=rs.getString("Nom_Proy")%></a></h3>
                          </div>
                          <div class="text">
                            <p class="d-sm-none">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                           <center><input type="submit" class="btn btn-template-outlined-white" value="ver"></center>
                            <%
                              
                    } rs.close();
                        st.close();
                        con.close();
                    }catch(Exception e){
                        System.out.println("El error es: "+e.getMessage());
                        System.out.println(e.getStackTrace());
                    }%>
                          </div>
                        </div>
                      </div>
                   </div></form>
                  </div>
                </div>
                          <%  
                    try{
                    Statement st = null;
                    ResultSet rs = null;
                    Connection con = Metodos.getConnection();
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT * FROM proyectos WHERE Id_Proy = 3");
                    while(rs.next()){
                %>
                <div class="col-md-4">
                  <div class="box-image">
                       <form method="POST" action="proyecto1.jsp">
                    <input type="hidden" name="id" value="3">
                    <div class="image"><img src="img/portfolio-3.jpg" alt="" class="img-fluid">
                      <div class="overlay d-flex align-items-center justify-content-center">
                        <div class="content">
                          <div class="name">
                            <h3><a href="proyecto1.jsp" class="color-white"><%=rs.getString("Nom_Proy")%></a></h3>
                          </div>
                          <div class="text">
                            <p class="d-sm-none">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                            <center><input type="submit" class="btn btn-template-outlined-white" value="ver"></center>
                            <%
                              
                    } rs.close();
                        st.close();
                        con.close();
                    }catch(Exception e){
                        System.out.println("El error es: "+e.getMessage());
                        System.out.println(e.getStackTrace());
                    }%>
                          </div>
                        </div>
                      </div>
                    </div></form>
                  </div>
                </div>
              </div>
              <div class="see-more text-center">
                <p> pero no es  todo, accede al portafolio publico de proyectos y conocelos.</p><a href="protafolio.jsp" class="btn btn-template-outlined">Proyectos</a>
              </div>
            </div>
          </div>
        </div>
      </section>
      
      <section class="bg-white bar">
        <div class="container">
          <div class="heading text-center">
            <h2>Acerca de promosoft</h2>
          </div>
          <p class="lead">Promosoft es una plataforma virtual enfocada a los alumnos del CECyT 9, temporalmente solo al area de programacion originada debido a que una gran parte de los proyectos creados no reciben la atencion que deberian merecer.</p>
         
        </div>
      </section>
      
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
    <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
    <script src="https://rawgit.com/jeresig/jquery.hotkeys/master/jquery.hotkeys.js"></script>
        <script src="js/validacion.js"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
    <script src="https://rawgit.com/jeresig/jquery.hotkeys/master/jquery.hotkeys.js"></script>
     <script type="text/javascript" src="JavaScript/jquery.hover3d.js"></script>
    <script type="text/javascript" src="js/SweetAlert.js"></script>
  </body>
</html>
<%
    
                       }
                
%>