/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.DAORespuesta;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Respuesta;

/**
 *
 * @author JENNY
 */
public class ControladorRespuesta extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String pre = request.getParameter("txtPregun");

        Respuesta usu = new Respuesta(pre);
        DAORespuesta us = new DAORespuesta(usu);


        
        if ("se123".equals(pre)) {
            
        if (us.select3(pre) == true) {
            
            request.getRequestDispatcher("respues1.jsp").forward(request, response);
        } else {
           request.getRequestDispatcher("errorClave.jsp").forward(request, response);
        }
            
        } else if("su123".equals(pre)){
            
           if (us.select3(pre) == true) {
            
            request.getRequestDispatcher("respues2.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("errorClave.jsp").forward(request, response);
        }
           
        } else if("di123".equals(pre)){
            
            if (us.select3(pre) == true) {
            
            request.getRequestDispatcher("respues3.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("errorClave.jsp").forward(request, response);
        }
            
         } else{
             request.getRequestDispatcher("errorClave.jsp").forward(request, response);
         }
        
        
        
//        if (us.select3(pre) == true) {
//            
//            request.getRequestDispatcher("principal.jsp").forward(request, response);
//        } else {
//            request.getRequestDispatcher("errorClave.jsp").forward(request, response);
//        }

        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
