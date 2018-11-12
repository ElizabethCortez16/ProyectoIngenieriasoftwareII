<%-- 
    Document   : reporteAlumno
    Created on : 12/11/2018, 12:24:45 PM
    Author     : JENNY
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Gradoyseccion"%>
<%@page import="modelo.Alumno"%>
<%@page import="modelo.Alumno"%>
<%@page import="modelo.Alumno"%>
<%@page import="dao.DAOAlumno"%>
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

                                <th>idalumno</th>
                                <th>nombre</th>
                                <th>apellidoPaterno</th>
                                <th>apellidoMaterno</th>
                                <th>telefono</th>
                                <th>correo</th> 
                                <th>edad</th>
                                <th>fechaNacimiento</th>
                                <th>genero</th>
                                <th>direccion</th>
                                <th>estadoCivil</th>        
                                <th>numeroHermanos</th>
                                <th>DNI</th>        
                                
                              
                            </tr>
                        </thead>                        
                        <tbody>
                        <%  
                        DAOAlumno gradoyseccion = new DAOAlumno();
                        List<Alumno>list=gradoyseccion.selectAll();
                        Iterator<Alumno>iter=list.iterator();
                        Alumno gr=null;
                        while (iter.hasNext()){                                
                                gr=iter.next();
                            
                   
                        %>
                                <tr>          
                                    <td><%= gr.getIdalumno()%></td>
                                    <td><%= gr.getNombre()%></td>
                                    <td><%= gr.getApellidoPaterno()%></td>
                                    <td><%= gr.getApellidoMaterno()%></td>
                                    <td><%= gr.getTelefono()%></td>
                                    <td><%= gr.getCorreo()%></td>
                                    <td><%= gr.getEdad()%></td>
                                    <td><%= gr.getFechaNacimiento()%></td>
                                    <td><%= gr.getGenero()%></td>
                                    <td><%= gr.getDireccion()%></td>
                                    <td><%= gr.getEstadoCivil()%></td>
                                    <td><%= gr.getNumeroHermanos()%></td>
                                    <td><%= gr.getDNI()%></td>
                              
                                 </tr>              
                                <% } %>


                        </tbody>                        
                    </table>
        </div>
        
    </body>
</html>
