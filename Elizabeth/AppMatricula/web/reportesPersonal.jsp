<%-- 
    Document   : reportesPersonal
    Created on : 11/11/2018, 10:13:57 PM
    Author     : JENNY
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Personal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAOPersonal"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <th>IdPersonal</th>
                                <th>Nombre</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Materno</th>
                                <th>Cargo</th>
                                <th>Genero</th>                               
                                <th>Telefono</th>
                                <th>Direccion</th>
                                <th>Fecha Nacimiento</th>
                                <th>DNI</th>
                                <th>Grado Instruccion</th>
                                <th>Correo</th>
                                
                            </tr>
                        </thead>                        
                        <tbody>
                        <%  
                        DAOPersonal personal = new DAOPersonal();
                        List<Personal>list=personal.selectAll();
                        Iterator<Personal>iter=list.iterator();
                        Personal per=null;
                        while (iter.hasNext()){                                
                                per=iter.next();
                            
                            

                        %>
                                <tr>  
                                    <td><%= per.getIdpersonal() %></td>
                                    <td><%= per.getNombre()%></td>
                                    <td><%= per.getApellidoPaterno()%></td>
                                    <td><%= per.getApellidoMaterno()%></td>
                                    <td><%= per.getCargo()%></td>
                                    <td><%= per.getGenero()%></td>
                                    <td><%= per.getTelefono()%></td>
                                    <td><%= per.getDireccion()%></td>
                                    <td><%= per.getFechaNacimiento()%></td>
                                    <td><%= per.getDNI()%></td>
                                    <td><%= per.getGradoInstruccion()%></td>
                                    <td><%= per.getCorreo()%></td>
                                    
                                </tr>              
                                <% } %>


                        </tbody>                        
                    </table>
        </div>                                                                  
    </body>
</html>
