<%-- 
    Document   : addProduct
    Created on : 29/05/2017, 11:55:47 AM
    Author     : Home
--%>

<%@page import="com.all_world_shirtts.entities.Producto"%>
<%@page import="com.all_world_shirts.controllers.ProductoJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="java.util.List"%>
<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear un producto</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
            <% 
         
          EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
         CollectionJpaController collectionController = new CollectionJpaController(emf);
         /*collectionController.findCollectionEntities().forEach(collec -> System.out.println(collec));*/
         List<Collection> collections;
         collections = collectionController.findCollectionEntities();
         
    %>
        <h1>Cree su nuevo producto</h1>
        <div class="container">
            <h2>Crear una nueva colección</h2>
            <form action="add_product">
              <div class="form-group">
                <label for="product_name">Nombre del producto:</label>
                <input type="text" class="form-control" id="product_name" placeholder="Ingrese el nombre del producto" name="product_name" required>
              </div>
              <div class="form-group">
                <label for="product_description">Descripción del producto:</label>
                <input type="text" class="form-control" id="product_description" placeholder="Ingrese la descripción del producto" name="product_description" required>
              </div>
              <div class="form-group">
                <label for="product_price">Precio del producto:</label>
                <input type="number" class="form-control" id="product_price" placeholder="Ingrese el precio del producto" name="product_price" required>
              </div>
              <div class="form-group">
                <label for="product_cantidad">Cantidad del producto:</label>
                <input type="number" class="form-control" id="product_cantidad" placeholder="Ingrese la cantidad del producto" name="product_cantidad" required>
              </div>
             <div class="form-group">
                <label for="product_img">Imagen del producto</label>
                <input type="text" class="form-control" id="product_img" placeholder="Ingrese la imagen del producto" name="product_img" required>
              </div>
               <div class="form-group">
                    <label for="sel1">Seleccione la colección:</label>
                    <select class="form-control" id="product_collection" name ="product_collection">
                    <% 
                    for(int i = 0; i < collections.size();i++){
                    %>
                    <option value="<%= collections.get(i).getIdCollection()%>"><%= collections.get(i).getCollectionName()%></option>
                     <%
                     } 
                     %>
                    </select>
               </div> 

              <div class="checkbox">
                <label><input type="checkbox" name="product_enabled"> Habilitado?</label>
              </div>
              <button type="submit" class="btn btn-default">Crear</button>
            </form>
        </div>
    </body>
</html>
