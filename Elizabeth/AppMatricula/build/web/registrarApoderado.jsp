<%-- 
    Document   : registrarApoderado
    Created on : 05-nov-2018, 16:05:58
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
               alert("Apoderado Registrado");
            }
        </script>
    </head>
    <body>
        <%@include file="jspf/header.jspf" %>
        <%@include file="jspf/nav2.jspf" %>

        <div class="container">
            <div class="card">
                <div class="card-header">
                    Nuevo Apoderado
                </div>
                <div class="card-body">
                    <form action="controladorapoderado.do" method="post" >
                      <div class="form-group row">                                                                                       
                            <label for="txtIdApoderado" class="col-sm-2 col-form-label">IdApoderado</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdApoderado" id="txtIdApoderado" placeholder="Id para el Apoderado" required="">
                            </div>
                        </div>
                        <div class="form-group row">                                                                                       
                            <label for="txtNombre" class="col-sm-2 col-form-label">Nombre</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtNombre" id="txtNombre" placeholder="Nombre del Apoderado" required="">
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="txtApellidoPaterno" class="col-sm-2 col-form-label">Apellido Paterno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtApellidoPaterno" name="txtApellidoPaterno" placeholder="Apellido Paterno del Apoderado" required="">
                            </div>
                        </div>                       
                        <div class="form-group row">
                            <label for="txtApellidoMaterno" class="col-sm-2 col-form-label">Apellido Materno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtApellidoMaterno" id="txtApellidoMaterno" placeholder="Apellido Materno del Apoderado" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtTelefono" class="col-sm-2 col-form-label">Telefono</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtTelefono" name="txtTelefono" placeholder="Telefono del Apoderado" required="">
                            </div>
                        </div>                                   
                         <div class="form-group row">
                            <label for="txtGenero" class="col-sm-2 col-form-label">Genero</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtGenero" id="txtGenero" placeholder="Genero del Apoderado" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtParentesco" class="col-sm-2 col-form-label">Parentesco</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtParentesco" id="txtParentesco" placeholder="Parentesco del Apoderado" required="">
                            </div>
                        </div>      
                        <div class="form-group row">
                            <label for="txtDireccion" class="col-sm-2 col-form-label">Direccion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion del Apoderado" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtGradoInstruccion" class="col-sm-2 col-form-label">Grado de Instruccion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtGradoInstruccion" name="txtGradoInstruccion" placeholder="Grado de Instruccion del Apoderado" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtEstadoCivil" class="col-sm-2 col-form-label">Estado Civil</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtEstadoCivil" name="txtEstadoCivil" placeholder="Estado Civil del Apoderado" required="">
                            </div>
                        </div>
                       <div class="form-group row">
                            <label for="txtDNI" class="col-sm-2 col-form-label">DNI</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtDNI" name="txtDNI" placeholder="DNI del Apoderado" required="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" onclick="my()"><i class="fas fa-plus"></i>&nbsp;&nbsp;Crear nuevo Apoderado</button>
                    </form>
                </div>
            </div>  
        </div> 
    </body>
</html>
