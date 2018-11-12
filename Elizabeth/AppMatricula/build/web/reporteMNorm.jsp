<%-- 
    Document   : reporteMNorm
    Created on : 12/11/2018, 12:26:09 PM
    Author     : JENNY
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.MatriculaNormal"%>
<%@page import="dao.DAOMatriculaNormal"%>
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

                                <th>idMatriculaNormal</th>
                                <th>idgradoyseccion</th>
                                <th>fechaMatricula</th>
                                <th>idalumno</th>
                                <th>situacion</th>
                                                            
                                
                                
                            </tr>
                        </thead>                        
                        <tbody>
                        <%  
                        DAOMatriculaNormal personal = new DAOMatriculaNormal();
                        List<MatriculaNormal>list=personal.selectAll();
                        Iterator<MatriculaNormal>iter=list.iterator();
                        MatriculaNormal per=null;
                        while (iter.hasNext()){                                
                                per=iter.next();
                            
                            

                        %>
                                <tr>                            
                                    <td><%= per.getIdMatriculaNormal()%></td>
                                    <td><%= per.getIdgradoyseccion()%></td>
                                    <td><%= per.getFechaMatricula()%></td>
                                    <td><%= per.getIdalumno()%></td>
                                    <td><%= per.getSitucion()%></td>
                                    
                             
                                    
                                </tr>              
                                <% } %>


                        </tbody>                        
                    </table>
        </div>      
        
    </body>
</html>
