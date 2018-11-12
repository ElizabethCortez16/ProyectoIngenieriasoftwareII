/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.DAOApoderado;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Apoderado;

/**
 *
 * @author Gamer17
 */
public class ControladorApoderado extends HttpServlet {

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

        String idapoderado = request.getParameter("txtIdApoderado");
        String nombre = request.getParameter("txtNombre");
        String apellidoPaterno = request.getParameter("txtApellidoPaterno");
        String apellidoMaterno = request.getParameter("txtApellidoMaterno");
        String telefono = request.getParameter("txtTelefono");
        String genero = request.getParameter("txtGenero");
        String parentesco = request.getParameter("txtParentesco");
        String direccion = request.getParameter("txtDireccion");
        String gradoIntruccion = request.getParameter("txtGradoInstruccion");
        String estadoCivil = request.getParameter("txtEstadoCivil");
        String DNI = request.getParameter("txtDNI");
        
        Apoderado apo = new Apoderado(idapoderado, nombre, apellidoPaterno, apellidoMaterno, telefono, genero, parentesco, direccion, gradoIntruccion, estadoCivil, DNI);
        DAOApoderado apobd = new DAOApoderado();
        boolean res = apobd.insertar(apo);
        request.getRequestDispatcher("registrarApoderado.jsp").forward(request, response);
        
        
        

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
