<%-- 
    Document   : registrarPersonal
    Created on : 05-nov-2018, 15:22:21
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function my(){
               alert("Personal Registrado");
            }
        </script>
        <%@include file="jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include file="jspf/header.jspf" %>
        <%@include file="jspf/nav1.jspf" %>
        
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Nuevo Personal
                </div>
                <div class="card-body">
                    <form action="controladorpersonal.do" method="post">
                        <div class="form-group row">                                                                                                                               
                            <label for="txtIdPersonal" class="col-sm-2 col-form-label">IdPersonal</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdPersonal" id="txtIdPersonal" placeholder="Id para Personal" required="">
                            </div>
                        </div>  
                        <div class="form-group row">                                                                                                                                   
                            <label for="txtNombre" class="col-sm-2 col-form-label">Nombre</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtNombre" id="txtNombre" placeholder="Nombre del Personal" required="">
                            </div>
                        </div>                                                           
                        <div class="form-group row">
                            <label for="txtApellidoPaterno" class="col-sm-2 col-form-label">Apellido Paterno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtApellidoPaterno" name="txtApellidoPaterno" placeholder="Apellido Paterno del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtApellidoMaterno" class="col-sm-2 col-form-label">Apellido Materno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtApellidoMaterno" id="txtApellidoMaterno" placeholder="Apellido Materno del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtCargo" class="col-sm-2 col-form-label">Cargo</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtCargo" name="txtCargo" placeholder="Cargo del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtGenero" class="col-sm-2 col-form-label">Genero</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtGenero" name="txtGenero" placeholder="Sexo del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtTelefono" class="col-sm-2 col-form-label">Telefono</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtTelefono" name="txtTelefono" placeholder="Telefono del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtDireccion" class="col-sm-2 col-form-label">Direccion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtFechaNacimiento" class="col-sm-2 col-form-label">Fecha Nacimiento</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtFechaNacimiento" name="txtFechaNacimiento" placeholder="Fecha Nacimiento del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtDNI" class="col-sm-2 col-form-label">DNI</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtDNI" name="txtDNI" placeholder="DNI del Personal" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtGradoInstruccion" class="col-sm-2 col-form-label">Grado Instruccion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtGradoInstruccion" name="txtGradoInstruccion" placeholder="Grado Instruccion" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtCorreo" class="col-sm-2 col-form-label">Correo</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtCorreo" name="txtCorreo" placeholder="Grado Instruccion" required="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" onclick="my()"><i class="fas fa-plus"></i>&nbsp;&nbsp;Crear nuevo Personal</button>
                    </form>
                </div>
            </div>  
        </div> 
       
        
        
        
    </body>
</html>
