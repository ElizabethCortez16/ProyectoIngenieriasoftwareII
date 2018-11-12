<%-- 
    Document   : matriculaNormal
    Created on : 12/11/2018, 10:52:40 AM
    Author     : JENNY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function my(){
               alert("Matricula Normal Registrado");
            }
        </script>
    <%@include file="jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include file="jspf/header.jspf" %>
        <%@include file="jspf/nav2.jspf" %>
        
        
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Matricula Normal
                </div>
                <div class="card-body">
                    <form action="controladormatriculanormal.do" method="post">
                        <div class="form-group row">                                                                                                                               
                            <label for="txtIdMatriculaNueva" class="col-sm-2 col-form-label">IdMatriculaNueva</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdMatriculaNueva" id="txtIdMatriculaNueva" placeholder="IdMatriculaNueva para la Matricula" required="">
                            </div>
                        </div>  
                        <div class="form-group row">                                                                                                                                   
                            <label for="txtIdgradoyseccion" class="col-sm-2 col-form-label">Idgradoyseccion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdgradoyseccion" id="txtIdgradoyseccion" placeholder="Idgradoyseccion para la Matricula" required="">
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label for="txtFechaMatricula" class="col-sm-2 col-form-label">Fecha Matricula</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtFechaMatricula" name="txtFechaMatricula" placeholder="Fecha para la Matricula" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtIdalumno" class="col-sm-2 col-form-label">IdAlumno</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdalumno" id="txtIdalumno" placeholder="IdAlumno para la Matricula" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtSitucion" class="col-sm-2 col-form-label">Situcion</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtSitucion" name="txtSitucion" placeholder="Situcion para la Matricula" required="">
                            </div>
                        </div>
                        
                        <button type="submit" class="btn btn-primary" onclick="my()"><i class="fas fa-plus"></i>&nbsp;&nbsp;Crear nueva Matricula</button>
                    </form>
                </div>
            </div>  
        </div> 
        
    </body>
</html>
