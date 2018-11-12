<%-- 
    Document   : errorClave
    Created on : 11/11/2018, 04:45:38 PM
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
                    Mensaje
                </div>
                <div class="card-body">
                   <div align="center"> <h1>Clave secreta incorrecta!</h1> </div>  
                 
                </div>
                <input type="submit" class="btn btn-primary" value="Cerrar Sesion" onclick="location.href = 'index.jsp'" >
            </div>  
        </div> 
    </body>
</html>
