<%-- 
    Document   : editProduct
    Created on : 29/05/2017, 08:48:26 PM
    Author     : Home
--%>

<%@page import="com.all_world_shirts.controllers.ProductoJpaController"%>
<%@page import="com.all_world_shirtts.entities.Producto"%>
<%@page import="java.util.List"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar producto</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    <% 
        Integer idProduct = Integer.parseInt(request.getParameter("id_product"));              
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
         CollectionJpaController collectionController = new CollectionJpaController(emf);
         /*collectionController.findCollectionEntities().forEach(collec -> System.out.println(collec));*/
         List<Collection> collections;
         collections = collectionController.findCollectionEntities();
         ProductoJpaController productoController = new ProductoJpaController(emf);
         Producto producto = productoController.findProducto(idProduct);
    %>
        <div class="container">
            <h2>Actualizar un producto</h2>
            <form action="edit_product" method="POST">
              <div class="form-group">
                <input type="hidden"id="id_product"  name ="id_product" value="<%= producto.getIdProduct() %>">
                <label for="product_name">Nombre del producto:</label>
                <input type="text" class="form-control" id="product_name" placeholder="Ingrese el nombre del producto" name="product_name" value="<%= producto.getNameProduct() %>" required>
              </div>
              <div class="form-group">
                <label for="product_description">Descripción del producto:</label>
                <input type="text" class="form-control" id="product_description" placeholder="Ingrese la descripción del producto" name="product_description" value="<%= producto.getDescription() %>" required>
              </div>
              <div class="form-group">
                <label for="product_price">Precio del producto:</label>
                <input type="number" class="form-control" id="product_price" placeholder="Ingrese el precio del producto" name="product_price" value="<%= producto.getPrice() %>" required>
              </div>
              <div class="form-group">
                <label for="product_cantidad">Cantidad del producto:</label>
                <input type="number" class="form-control" id="product_cantidad" placeholder="Ingrese el precio del producto" name="product_cantidad" value="<%= producto.getCantidad() %>" required>
              </div>             
             <div class="form-group">
                <label for="product_img">Imagen del producto</label>
                <input type="text" class="form-control" id="product_img" placeholder="Ingrese la imagen del producto" name="product_img" value="<%= producto.getImgDefault() %>" required>
              </div>
               <div class="form-group">
                    <label for="sel1">Seleccione la colección:</label>
                    <select class="form-control" id="product_collection" name ="product_collection">
                    <% 
                    for(int i = 0; i < collections.size();i++){
                    %>
                    <option value="<%= collections.get(i).getIdCollection()%>" <% if(producto.getIdCollection() == collections.get(i).getIdCollection()){ %> selected <% }%> ><%= collections.get(i).getCollectionName()%></option>
                     <%
                     } 
                     %>
                    </select>
               </div> 

              <div class="checkbox">
                <% if(producto.getEnabled()==true){ %>
                <label><input type="checkbox" name="product_enabled" checked> Habilitado?</label>
                <% }else { %>
                <label><input type="checkbox" name="product_enabled"> Habilitado?</label>
                <% } %>
              </div>
              <button type="submit" class="btn btn-default">Actualizar</button>
            </form>
        </div>
    </body>
</html>
