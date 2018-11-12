<%-- 
    Document   : reporteMNuev
    Created on : 12/11/2018, 12:25:45 PM
    Author     : JENNY
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.MatriculaNueva"%>
<%@page import="modelo.MatriculaNueva"%>
<%@page import="modelo.MatriculaNueva"%>
<%@page import="dao.DAOMatriculaNueva"%>
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

                                <th>idMatriculaNueva</th>
                                <th>idgradoyseccion</th>
                                <th>ieprocedencia</th>
                                <th>idalumno</th>
                                <th>situacion</th>
                                                            
                                
                                
                            </tr>
                        </thead>                        
                        <tbody>
                        <%  
                        DAOMatriculaNueva personal = new DAOMatriculaNueva();
                        List<MatriculaNueva>list=personal.selectAll();
                        Iterator<MatriculaNueva>iter=list.iterator();
                        MatriculaNueva per=null;
                        while (iter.hasNext()){                                
                                per=iter.next();
                            
                            

                        %>
                                <tr>                            
                                    <td><%= per.getIdMatriculaNueva()%></td>
                                    <td><%= per.getIdgradoyseccion()%></td>
                                    <td><%= per.getIeprocedenci()%></td>
                                    <td><%= per.getIdalumno()%></td>
                                    <td><%= per.getSitucion()%></td>
                                    
                             
                                    
                                </tr>              
                                <% } %>


                        </tbody>                        
                    </table>
        </div>      
        
    </body>
</html>
