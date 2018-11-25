<%-- 
    Document   : InicioSesion
    Created on : 26-sep-2018, 1:37:00
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estilosIS.css" type="text/css"></link>
        <script language="JavaScript" type="text/javascript" src="jss/header.js"></script>
        <link rel="stylesheet" href="css/font.css" type="text/css"></link>
        <link rel="stylesheet" href="css/main.css" type="text/css"></link>
        <script language="JavaScript" type="text/javascript" src="jss/main.js"></script>

        
        
    </head>
    <body>
        <header >
            
            <div class="logo">
                PROMOSOFT
            </div>
            
            <nav>
                <a href="index.jsp">Inicio</a>
                 <a href="informacion.jsp">¿Quienes somos?</a>
                  <a href="InicioSesion.jsp">Iniciar sesion</a>
                   <a href="registro.jsp">Registrarse</a>
                    <a href="proyecto.jsp">Proyectos</a>
     
                  
            </nav>
            
        </header>
        
        <div class="social-bar">
        
            <a href="" class="icon icon-facebook" target="_blank"></a>
             <a href="" class="icon icon-youtube" target="_blank"></a>
              <a href="" class="icon icon-instagram" target="_blank"></a>
               <a href="" class="icon icon-twitter" target="_blank"></a>
            
        </div>
        
        <div class="contenedor-form">
            <div class="toggle">
                <span href="registro.jsp">Crear Cuenta</span>
                
            </div>
            <div class="formulario">
                <h2>Iniciar Sesion</h2>
                <form action="#">
                    <input type="text" placeholder="Usuario" required>
                    <input type="password" placeholder="Contraseña" required>
                    <select>
                        <option value="Alumno">Alumno</option>
                        <option value="Profesor">Profesor</option>
                       
                    </select>
                    <input type="submit" value="Iniciar Sesion">
                </form>
            </div>
            
            <div class="formulario">
                <h2>Crea tu cuenta</h2>
                <form action="#">
                    <input type="text" placeholder="Usuario" required>
                    <input type="password" placeholder="Contraseña" required>
                    <input type="email" placeholder="Correo Electronico" required>
                    <input type="text" placeholder="Telefono">
                    <select>
                        <option value="Alumno">Alumno</option>
                        <option value="Profesor">Profesor</option>
                       
                    </select>
                    <input type="submit" value="Registrarse">
                </form>
            </div>
            <div class="reset-password">
                <a href="#">Olvide mi contraseña</a>
                
            </div>
                
        </div>
        
      
        
    </body>
</html>
