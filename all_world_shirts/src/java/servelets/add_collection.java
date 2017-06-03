/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelets;

import com.all_world_shirts.controllers.CollectionJpaController;
import com.all_world_shirtts.entities.Collection;
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
@WebServlet(name = "add_collection", urlPatterns = {"/add_collection"})
public class add_collection extends HttpServlet {

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
            String collectionName = request.getParameter("collection_name");
            String collectionDescription = request.getParameter("collection_description");
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            CollectionJpaController productoController = new CollectionJpaController(emf);
            Collection collection = new Collection();
            collection.setCollectionName(collectionName);
            collection.setDescription(collectionDescription);
            if(request.getParameter("collection_enabled") == null){
                collection.setEnabled(false);
            }
            else{
                collection.setEnabled(true);
            }
            productoController.create(collection);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet add_collection</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Su colección a sido creada exitosamente</h1>");
            out.println("<a href=\"viewCollections.jsp\">Volver</a>");
            out.println("</body>");
            out.println("</html>");

            /*EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            ProductoJpaController productoController = new ProductoJpaController(emf);

        Producto Product;
        Product = productoController.findProducto(idProducto);
         String urlImg = "images/products/";
         
  CollectionJpaController collectionController = new CollectionJpaController(emf);
         /*collectionController.findCollectionEntities().forEach(collec -> System.out.println(collec));*/
        /*Collection collect;
         collect = collectionController.findCollection(Product.getIdCollection());*/
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
