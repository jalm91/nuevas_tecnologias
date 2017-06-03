/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelets;

import com.all_world_shirts.controllers.PaymentJpaController;
import com.all_world_shirtts.entities.Payment;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
@WebServlet(name = "SavePayment", urlPatterns = {"/SavePayment"})
public class SavePayment extends HttpServlet {

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
            String contactName = request.getParameter("name");
             String contactEmail = request.getParameter("email");
             String contactTarjeta = request.getParameter("tarjeta");
             String contactTarjetaNum = request.getParameter("tarjeta_num");
             String contactCodigo = request.getParameter("codigo");
             String contactValor = request.getParameter("valorp");
              EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            PaymentJpaController productoController = new PaymentJpaController(emf);
            Payment payment = new Payment();
            payment.setNamePayment(contactName);
            payment.setEmail(contactEmail);
            payment.setTarjeta(contactTarjeta);
            payment.setTarjetaNum(contactTarjetaNum);
            payment.setCodigo(contactCodigo);
            payment.setValor(contactValor);
            productoController.create(payment);            
                     
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SavePayment</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Pago Exitoso</h1>");
            out.println("<a href=\"index.jsp\">Volver</a>");
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
