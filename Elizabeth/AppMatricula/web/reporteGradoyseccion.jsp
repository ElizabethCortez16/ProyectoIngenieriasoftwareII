<%-- 
    Document   : reporteGradoyseccion
    Created on : 12/11/2018, 11:35:00 AM
    Author     : JENNY
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Gradoyseccion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAOGradoyseccion"%>
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
                                <th>idgradoyseccion</th>
                                <th>numSeccionP</th>
                                <th>numSeccionS</th>
                                <th>numSeccionT</th>
                                <th>numSeccionC</th>
                                <th>numSeccionQ</th>                               
                                
                              
                            </tr>
                        </thead>                        
                        <tbody>
                        <%  
                        DAOGradoyseccion gradoyseccion = new DAOGradoyseccion();
                        List<Gradoyseccion>list=gradoyseccion.selectAll();
                        Iterator<Gradoyseccion>iter=list.iterator();
                        Gradoyseccion gr=null;
                        while (iter.hasNext()){                                
                                gr=iter.next();
                            
                   
                        %>
                                <tr>  
                                    <td><%= gr.getIdgradoyseccion()%></td>
                                    <td><%= gr.getNumSeccionP()%></td>
                                    <td><%= gr.getNumSeccionS()%></td>
                                    <td><%= gr.getNumSeccionT()%></td>
                                    <td><%= gr.getNumSeccionC()%></td>
                                    <td><%= gr.getNumSeccionQ()%></td>
                                    
                              
                                 </tr>              
                                <% } %>


                        </tbody>                        
                    </table>
        </div>                                                                  
    </body>
</html>