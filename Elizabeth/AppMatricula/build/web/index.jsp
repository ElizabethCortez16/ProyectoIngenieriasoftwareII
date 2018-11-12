<%-- 
    Document   : index
    Created on : 2/11/2018, 03:35:13 PM
    Author     : JENNY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="jspf/estilosLogin.jspf" %>
        <script>
            function my(){
               var mensaje;
               var opcion = confirm("OK");
               
               if (opcion==true){
                   mensaje="Has clickado ok";
                  }else{
                   mensaje="Has clickado cancelar";          
                  }
                    document.getElementById("ejemplo").innerHTML=mensaje;
            }      
            </script>
           
         </head>
    <body>

        <section class="login-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-sec">
                        <h2 class="text-center">Bienvenidos Formulario de Entrada</h2>
                        
                        <form action="controladorusuario.do" method="post">
                            <div class="form-group">
                                <label class="text-uppercase">Usuario</label>
                                 <input type="text" class="form-control" name="txtUsuario" id="txtUsuario" placeholder="Usuario" >

                            </div>
                            <div class="form-group">
                                <label  class="text-uppercase">Contraseña</label>
                                <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Contraseña">
                            </div>

                            <div class="form-check">
                                <button type="submit" class="btn btn-info btn-flat m-b-30 m-t-30" id="btn-login" onclick="my()">Ingresar</button>                                                               
                                <a href="recuperarContraseña.jsp" class="btn btn-info btn-flat m-b-30 m-t-30">Recuperar Contraseña</a>  
                            </div>
                        </form>
                        
                        
                        
                       <div class="copy-text"> Copyright © 2018 Todos los derechos reservados Universidad de Ciencias y Humanidades </div>
                    </div>
                    <div class="col-md-8 banner-sec">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block img-fluid" src="https://static.pexels.com/photos/33972/pexels-photo.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2>José Carlos Mariátegui</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                                        </div>	
                                    </div>
                                </div>


                            </div>	   

                        </div>
                    </div>
                </div>
        </section>
    </body>
</html>
