/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelets;

import com.all_world_shirts.controllers.CollectionJpaController;
import com.all_world_shirts.controllers.ProductoJpaController;
import com.all_world_shirtts.entities.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;
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
@WebServlet(name = "add_product", urlPatterns = {"/add_product"})
public class add_product extends HttpServlet {

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
            String productName = request.getParameter("product_name");
            String productDescription = request.getParameter("product_description");
            Integer productPrice = Integer.parseInt(request.getParameter("product_price"));
            Integer productCantidad = Integer.parseInt(request.getParameter("product_cantidad"));
            String productImg = request.getParameter("product_img");
            Integer productCollection = Integer.parseInt(request.getParameter("product_collection"));
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            ProductoJpaController productoController = new ProductoJpaController(emf);
            Producto producto = new Producto();
            producto.setIdCollection(productCollection);
            producto.setNameProduct(productName);
            producto.setPrice(productPrice);
            producto.setImgDefault(productImg);
            producto.setDescription(productDescription);
            producto.setCantidad(productCantidad);
            if(request.getParameter("product_enabled") == null){
             producto.setEnabled(false);
                   
            }
            else{
             producto.setEnabled(true);   
            }
            productoController.create(producto);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet add_product</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Su producto a sido actualizado exitosamente</h1>");
            out.println("<a href=\"viewProductos.jsp\">Volver</a>");
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
