<%-- 
    Document   : vacantes
    Created on : 12/11/2018, 12:14:31 PM
    Author     : JENNY
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Vacantes"%>
<%@page import="dao.DAOVacantes"%>
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
        <%@include file="jspf/nav1.jspf" %>
        
         <div class="card-body"> 
         <table class="table table-hover">
                        <thead>
                            <tr>

                                <th>idvacantes</th>
                                <th>primero</th>
                                <th>segundo</th>
                                <th>tercero</th>
                                <th>cuarto</th>
                                <th>quinto</th>                               
                                
                                
                            </tr>
                        </thead>                        
                        <tbody>
                        <%  
                        DAOVacantes personal = new DAOVacantes();
                        List<Vacantes>list=personal.selectAll();
                        Iterator<Vacantes>iter=list.iterator();
                        Vacantes per=null;
                        while (iter.hasNext()){                                
                                per=iter.next();
                            
                            

                        %>
                                <tr>  
                                    <td><%= per.getIdvacantes()%></td>
                                    <td><%= per.getPrimero()%></td>
                                    <td><%= per.getSegundo()%></td>
                                    <td><%= per.getTercero()%></td>
                                    <td><%= per.getCuarto()%></td>
                                    <td><%= per.getQuinto()%></td>
                             
                                    
                                </tr>              
                                <% } %>


                        </tbody>                        
                    </table>
        </div>      
        
    </body>
</html>
