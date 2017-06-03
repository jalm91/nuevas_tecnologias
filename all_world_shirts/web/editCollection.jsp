<%-- 
    Document   : editCollection
    Created on : 29/05/2017, 08:16:13 PM
    Author     : Home
--%>

<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar colección</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <% 
            Integer idCollection = Integer.parseInt(request.getParameter("id_collection"));             
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            CollectionJpaController productoController = new CollectionJpaController(emf);
            Collection collection;
            collection = productoController.findCollection(idCollection);
        %> 
        <div class="container">
            <h2>Editar una nueva colección</h2>
            <form action="edit_collection">
              <div class="form-group">
                <label for="collection_name">Nombre de la colección:</label>
                <input type="hidden" id="id_collection" name="id_collection" value="<%= collection.getIdCollection() %>">
                <input type="text" class="form-control" id="collection_name" placeholder="Ingrese el nombre de la colección" name="collection_name" value="<%= collection.getCollectionName() %>" required>
              </div>
              <div class="form-group">
                <label for="collection_description">Descripción de la colección:</label>
                <input type="text" class="form-control" id="collection_description" placeholder="Ingrese la descripción de la coleccción" name="collection_description" value="<%= collection.getDescription() %>" required>
              </div>
              <div class="checkbox">
                  <% if(collection.getEnabled()==true){ %>
                  <label><input type="checkbox" name="collection_enabled" checked> Habilitada?</label>
                  <% }else{ %>
                  <label><input type="checkbox" name="collection_enabled"> Habilitada?</label>
                  <% } %>
              </div>
              <button type="submit" class="btn btn-default">Actualizar</button>
            </form>
        </div>
    </body>
</html>
