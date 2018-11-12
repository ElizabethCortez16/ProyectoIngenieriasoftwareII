<%-- 
    Document   : reporteApoderado
    Created on : 12/11/2018, 12:25:20 PM
    Author     : JENNY
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Apoderado"%>
<%@page import="modelo.Apoderado"%>
<%@page import="modelo.Apoderado"%>
<%@page import="dao.DAOApoderado"%>
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
        <%@include file="jspf/nav2.jspf" %>
        
         <div class="card-body"> 
         <table class="table table-hover">
                        <thead>
                            <tr>
 
                                <th>idapoderado</th>
                                <th>nombre</th>
                                <th>apellidoPaterno</th>
                                <th>apellidoMaterno</th>
                                <th>telefono</th>
                                <th>genero</th> 
                                <th>parentesco</th>
                                <th>direccion</th>
                                <th>gradoIntruccion</th>
                                <th>estadoCivil</th>
                                <th>DNI</th>        
                                  
                                
                              
                            </tr>
                        </thead>                        
                        <tbody>
                        <%  
                        DAOApoderado apoderado = new DAOApoderado();
                        List<Apoderado>list=apoderado.selectAll();
                        Iterator<Apoderado>iter=list.iterator();
                        Apoderado gr=null;
                        while (iter.hasNext()){                                
                                gr=iter.next();
                            
                   
                        %>
                                <tr>                                
                                    <td><%= gr.getIdapoderado()%></td>
                                    <td><%= gr.getNombre()%></td>
                                    <td><%= gr.getApellidoPaterno()%></td>
                                    <td><%= gr.getApellidoMaterno()%></td>
                                    <td><%= gr.getTelefono()%></td>
                                    <td><%= gr.getGenero()%></td>
                                    <td><%= gr.getParentesco()%></td>
                                    <td><%= gr.getDireccion()%></td>
                                    <td><%= gr.getGradoIntruccion()%></td>
                                    <td><%= gr.getEstadoCivil()%></td>                               
                                    <td><%= gr.getDNI()%></td>
                              
                                 </tr>              
                                <% } %>


                        </tbody>                        
                    </table>
        </div>
        
    </body>
</html>
