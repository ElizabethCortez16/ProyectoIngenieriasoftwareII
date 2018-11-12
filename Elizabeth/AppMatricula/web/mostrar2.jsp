<%-- 
    Document   : mostrar2
    Created on : 11/11/2018, 03:01:24 PM
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
                    Pregunta Secreta
                </div>
                <div class="card-body">
                    <form action="controladorrespuesta.do" method="post" >
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Responder</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtPregun" id="txtPregun" placeholder="¿Cual es el nombre su primer perro?" required="">
                            </div>
                        </div>                                            
                        <button type="submit" class="btn btn-primary"><i class="fas fa-plus"></i>&nbsp;&nbsp;Ingresar</button>
                    </form>
                </div>
            </div>  
        </div> 
    </body>
</html>