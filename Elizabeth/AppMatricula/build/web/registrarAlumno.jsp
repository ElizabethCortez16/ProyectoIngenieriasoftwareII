<%-- 
    Document   : registrarAlumno
    Created on : 05-nov-2018, 16:05:44
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
               alert("Alumno Registrado");
            }
        </script>
    </head>
    <body>
        <%@include file="jspf/header.jspf" %>
        <%@include file="jspf/nav2.jspf" %>

        <div class="container">
            <div class="card">
                <div class="card-header">
                    Nuevo Alumno
                </div>
                <div class="card-body">
                    <form action="controladoralumno.do" method="post">
                         <div class="form-group row">                                                                                                              
                            <label for="txtIdAlumno" class="col-sm-2 col-form-label">IdAlumno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdAlumno" id="txtIdAlumno" placeholder="Id para el Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">                                                                                                              
                            <label for="txtNombre" class="col-sm-2 col-form-label">Nombre</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtNombre" id="txtNombre" placeholder="Nombre del Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtApellidoPaterno" class="col-sm-2 col-form-label">Apellido Paterno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtApellidoPaterno" name="txtApellidoPaterno" placeholder="Apellido Paterno del Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtApellidoMaterno" class="col-sm-2 col-form-label">Apellido Materno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtApellidoMaterno" id="txtApellidoMaterno" placeholder="Apellido Materno del Alumno" required="">
                            </div>
                        </div>
                       
                        <div class="form-group row">
                            <label for="txtTelefono" class="col-sm-2 col-form-label">Telefono</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtTelefono" name="txtTelefono" placeholder="Telefono del Alumno" required="">
                            </div>
                        </div>
                       <div class="form-group row">
                            <label for="txtCorreo" class="col-sm-2 col-form-label">Correo</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtCorreo" name="txtCorreo" placeholder="Correo del Alumno" required="">
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label for="txtEdad" class="col-sm-2 col-form-label">edad</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtEdad" id="txtEdad" placeholder="Edad del Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtFechaNacimiento" class="col-sm-2 col-form-label">Fecha Nacimiento</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtFechaNacimiento" id="txtFechaNacimiento" placeholder="Fecha Nacimiento del Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtGenero" class="col-sm-2 col-form-label">Genero</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtGenero" name="txtGenero" placeholder="Genero del Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtDireccion" class="col-sm-2 col-form-label">Direccion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion del Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtEstadoCivil" class="col-sm-2 col-form-label">Estado Civil</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtEstadoCivil" name="txtEstadoCivil" placeholder="Estado Civil del Alumno" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtNumeroHermanos" class="col-sm-2 col-form-label">Numero de Hermanos</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtNumeroHermanos" name="txtNumeroHermanos" placeholder="Numero de Hermanos del Alumno" required="">
                            </div>
                        </div>
                       <div class="form-group row">
                            <label for="txtDNI" class="col-sm-2 col-form-label">DNI</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtDNI" name="txtDNI" placeholder="DNI del Alumno" required="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" onclick="my()"><i class="fas fa-plus"></i>&nbsp;&nbsp;Crear nuevo Alumno</button>
                    </form>
                </div>
            </div>  
        </div> 
    </body>
</html>