/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.ConnectDB;
import Entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author drako
 */
@WebServlet(name = "putProductDb", urlPatterns = {"/putProduct"})
public class putProductDb extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet putProductDb</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet putProductDb at " + request.getContextPath() + "</h1>");
            ConnectDB cdb = new ConnectDB();
            HttpSession ses = request.getSession();
            if (ses.getAttribute("allProduct") == null || ses.getAttribute("backUpIdProduct") == null) {
                cdb.getAllProduct();
                ses.setAttribute("allProduct", cdb.getHmProduct());
                ses.setAttribute("backUpIdProduct", cdb.getBackUpIdProduct());
            } else {
                cdb.setHmProduct((LinkedHashMap<String, Product>) ses.getAttribute("allProduct"));
                cdb.setBackUpIdProduct((HashSet<String>) ses.getAttribute("backUpIdProduct"));
            }
            cdb.putDBProduct();
            cdb.getAllProduct();
            ses.setAttribute("allProduct", cdb.getHmProduct());
            ses.setAttribute("backUpIdProduct", cdb.getBackUpIdProduct());
            request.setAttribute("message",
                                "Synchronized into database successfully!");
            request.getRequestDispatcher("management.jsp").forward(request, response);
            out.println("</body>");
            out.println("</html>");
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
