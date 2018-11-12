/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.DAORecuperarContraseña;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.RecuperarContraseña;

/**
 *
 * @author JENNY
 */
public class ControladorRecuperarContra extends HttpServlet {

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
        
       String recupe = request.getParameter("txtRecuper");
        
        RecuperarContraseña usu = new RecuperarContraseña(recupe);
        DAORecuperarContraseña us = new DAORecuperarContraseña(usu);
       
        if ("2048".equals(recupe)) {
            
            if (us.select2(recupe)== true) {
                    request.getRequestDispatcher("principal.jsp").forward(request, response);
        
            }
            
        } if("secretaria".equals(recupe)){
            
           if (us.select2(recupe)== true) {
                    request.getRequestDispatcher("mostrar.jsp").forward(request, response);
        
            }
        } if("subdirectora".equals(recupe)){
            
            if (us.select2(recupe)== true) {
                    request.getRequestDispatcher("mostrar2.jsp").forward(request, response);
        
            }
            
        }if("directora".equals(recupe)){
            
            if (us.select2(recupe)== true) {
                    request.getRequestDispatcher("mostrar3.jsp").forward(request, response);
        
            }
            
        } else {
            
                    request.getRequestDispatcher("error.jsp").forward(request, response);
        
        }
            
        
        
//        if (us.select2(recupe) == true) {
//            request.getRequestDispatcher("mostrar.jsp").forward(request, response);
//        } else {
//            request.getRequestDispatcher("index.jsp").forward(request, response);
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
