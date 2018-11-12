<%-- 
    Document   : registrarGradoyseccion
    Created on : 05-nov-2018, 16:06:23
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <%@include file="jspf/estilos.jspf" %>
    <script>
            function my(){
               alert("Grado y Seccion Registrado");
            }
        </script>
    </head>
    <body>
        <%@include file="jspf/header.jspf" %>
        <%@include file="jspf/nav1.jspf" %>
        
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Nuevo Grado y Seccion
                </div>
                <div class="card-body">
                    <form action="controladorgradoyseccion.do" method="post" >
                        <div class="form-group row">                                                                 
                          <label for="txtIdGradoySeccion" class="col-sm-2 col-form-label">Id Grado y Seccion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdGradoySeccion" id="txtIdGradoySeccion" placeholder="Id del Grado y Seccion" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtSeccionP" class="col-sm-2 col-form-label">Nº de Seccion Primero</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtSeccionP" name="txtSeccionP" placeholder="Numero del Grado y Seccion" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtSeccionS" class="col-sm-2 col-form-label">Nº de Seccion Segundo</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtSeccionS" name="txtSeccionS" placeholder="Numero del Grado y Seccion" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtSeccionT" class="col-sm-2 col-form-label">Nº de Seccion Tercero</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtSeccionT" name="txtSeccionT" placeholder="Numero del Grado y Seccion" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtSeccionC" class="col-sm-2 col-form-label">Nº de Seccion Cuarto</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtSeccionC" name="txtSeccionC" placeholder="Numero del Grado y Seccion" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtSeccionQ" class="col-sm-2 col-form-label">Nº de Seccion Quinto</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtSeccionQ" name="txtSeccionQ" placeholder="Numero del Grado y Seccion" required="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" onclick="my()"><i class="fas fa-plus"></i>&nbsp;&nbsp;Crear nuevo Grado y Seccion</button>
                    </form>
                </div>
            </div>  
        </div> 
    </body>
</html>
