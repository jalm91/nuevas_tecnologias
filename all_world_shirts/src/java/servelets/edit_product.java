/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelets;

import com.all_world_shirts.controllers.ProductoJpaController;
import com.all_world_shirtts.entities.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "edit_product", urlPatterns = {"/edit_product"})
public class edit_product extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Integer idProduct = Integer.parseInt(request.getParameter("id_product"));
            String productName = request.getParameter("product_name");
            String productDescription = request.getParameter("product_description");
            Integer productPrice = Integer.parseInt(request.getParameter("product_price"));
            Integer productCantidad = Integer.parseInt(request.getParameter("product_cantidad"));
            String productImg = request.getParameter("product_img");
            Integer productCollection = Integer.parseInt(request.getParameter("product_collection"));
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            ProductoJpaController productoController = new ProductoJpaController(emf);
            Producto producto = productoController.findProducto(idProduct);
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
            productoController.edit(producto);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet edit_product</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Su producto a sido creada exitosamente</h1>");
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(edit_product.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(edit_product.class.getName()).log(Level.SEVERE, null, ex);
        }
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
