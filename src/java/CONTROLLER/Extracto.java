/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import NEGOCIO.Banco;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stive
 */
@WebServlet(name = "Extracto", urlPatterns = {"/extracto.do"})
public class Extracto extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try {
            Integer cedula = Integer.parseInt(request.getParameter("cedula"));
            String fechaInicio = request.getParameter("fechaInicio");
            String fechaFinal = request.getParameter("fechaFinal");

            Banco banquito = new Banco();

            if (request.getSession().getAttribute("banquito") != null) {
                banquito = (Banco) (request.getSession().getAttribute("banquito"));
            }
            if (banquito.mostrarExtractoBancario(cedula, fechaInicio, fechaFinal)!=null) {
                request.getSession().setAttribute("banquito", banquito);
                request.getRequestDispatcher("./JSP/Cliente/extractoexitoso.jsp").forward(request, response);
            } else {
                System.err.println("falso");
                request.getSession().setAttribute("error", "jeje hay error");
                request.getRequestDispatcher("./JSP/error/error.jsp").forward(request, response);
            }

        } catch (Exception e) {
            System.err.println(e.getMessage());
            System.out.println("el error es: " + e.getMessage());
            request.getSession().setAttribute("error", e.getMessage());
            request.getRequestDispatcher("./JSP/error/error.jsp").forward(request, response);
        }
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
