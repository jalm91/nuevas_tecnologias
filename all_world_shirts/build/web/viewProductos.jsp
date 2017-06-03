<%-- 
    Document   : viewProductos
    Created on : 29/05/2017, 03:50:42 PM
    Author     : Home
--%>

<%@page import="com.all_world_shirtts.entities.Producto"%>
<%@page import="com.all_world_shirts.controllers.ProductoJpaController"%>
<%@page import="java.util.List"%>
<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    <% 
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
    ProductoJpaController productoController = new ProductoJpaController(emf);
    CollectionJpaController collectionController = new CollectionJpaController(emf);
    List<Producto> producto;
    producto = productoController.findProductoEntities();
    
    %>
        <div class="container">
        <a href="admin.jsp">
          <span class="glyphicon glyphicon-home"></span>
        </a>
          <h2>Listado de productos</h2>
          <p style="text-align: right">Añadir producto        
              <a href="addProduct.jsp" class="btn btn-info btn-sm">
                <span class="glyphicon glyphicon-plus"></span>
              </a>
          </p>
                    <table class="table">
            <thead>
              <tr>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Colección</th>
                <th>Imagen default</th>
                <th>Estado</th>
                <th>Opciones</th>
                
              </tr>
            </thead>
            <tbody>
            <% for(int i = 0; i < producto.size();i++){ %>
                <tr>
                    <td><%= producto.get(i).getNameProduct() %></td>
                    <td><%= producto.get(i).getDescription()%></td>
                    <td><%= producto.get(i).getPrice() %></td>
                    <td><%= producto.get(i).getCantidad() %></td>
                    <td>
                        <% Collection collections;
                            collections = collectionController.findCollection(producto.get(i).getIdCollection());
                        %>
                        <%= collections.getCollectionName() %>
                    </td>
                    <td><%= producto.get(i).getImgDefault() %></td>
                    <td>
                        <p style="text-align: center">
                        <% if(producto.get(i).getEnabled()) { %>
                           <span class="glyphicon glyphicon-ok-sign"></span>
                        <% }else{ %>
                            <span class="glyphicon glyphicon-remove-sign"></span>
                        <% } %>
                        </p>
                    </td>
                    <td>      
                       <p style="text-align: center">
                        <a href="editProduct.jsp?id_product=<%= producto.get(i).getIdProduct() %>">
                          <span class="glyphicon glyphicon-edit"></span>
                        </a>
                      </p>
                    </td>
                </tr>
            <% } %>
            </tbody>
          </table>
        </div>
    </body>
</html>
