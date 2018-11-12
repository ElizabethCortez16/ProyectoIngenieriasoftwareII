<%-- 
    Document   : recuperarContraseña
    Created on : 9/11/2018, 02:56:03 PM
    Author     : JENNY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <%@include file="jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include file="jspf/header.jspf" %>
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Ingrese su Usuario
                </div>
                <div class="card-body">
                    <form action="controladorrecuperarcontra.do" method="post" >
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Usuario</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtRecuper" id="txtRecuper" placeholder="Ingresar Usuario" required="">
                            </div>
                        </div>                                            
                        <button type="submit" class="btn btn-primary"><i class="fas fa-plus"></i>&nbsp;&nbsp;Ingresar</button>
                        <input type="submit" class="btn btn-primary" value="Cerrar Sesion" onclick="location.href = 'index.jsp'" >
                    </form>
                </div>
            </div>  
        </div> 
    </body>
</html>
