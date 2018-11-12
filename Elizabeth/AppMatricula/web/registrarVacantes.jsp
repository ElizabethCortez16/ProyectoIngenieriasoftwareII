<%-- 
    Document   : registrarVacantes
    Created on : 05-nov-2018, 15:56:59
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
               alert("Vacante Registrada");
            }
        </script>
    </head>
    <body>
        <%@include file="jspf/header.jspf" %>
        <%@include file="jspf/nav1.jspf" %>
        
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Nueva Vacante
                </div>
                
   
                
                <div class="card-body">
                    <form action="controladorvacantes.do" method="post" >
                        <div class="form-group row">
                            <label for="txtIdVacantes" class="col-sm-2 col-form-label">IdVacantes</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtIdVacantes" id="txtIdVacantes" placeholder="Escribir el IdVacantes" required="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="txtPrimero" class="col-sm-2 col-form-label">Primero</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtPrimero" name="txtPrimero" placeholder="Cantidad Primero" required="">
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label for="txtSegundo" class="col-sm-2 col-form-label">Segundo</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtSegundo" name="txtSegundo" placeholder="Cantidad Segundo" required="">
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label for="txtTercero" class="col-sm-2 col-form-label">Tercero</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtTercero" name="txtTercero" placeholder="Cantidad Tercero" required="">
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label for="txtCuarto" class="col-sm-2 col-form-label">Cuarto</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtCuarto" name="txtCuarto" placeholder="Cantidad Cuarto" required="">
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label for="txtQuinto" class="col-sm-2 col-form-label">Quinto</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="txtQuinto" name="txtQuinto" placeholder="Cantidad Quinto" required="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" onclick="my()"><i class="fas fa-plus"></i>&nbsp;&nbsp;Crear nueva Vacante</button>
                    </form>
                </div>
            </div>  
        </div> 
    </body>
</html>
