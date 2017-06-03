<%-- 
    Document   : viewCollections
    Created on : 29/05/2017, 03:34:44 PM
    Author     : Home
--%>

<%@page import="java.util.List"%>
<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Collecciones</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
        <a href="admin.jsp">
          <span class="glyphicon glyphicon-home"></span>
        </a>
          <h2>Listado de Colecciones</h2>
          <p style="text-align: right">Añadir colección        
              <a href="addCollection.jsp" class="btn btn-info btn-sm">
                <span class="glyphicon glyphicon-plus"></span>
              </a>
          </p>            
          <table class="table">
            <thead>
              <tr>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Estado</th>
                <th>Opciones</th>
              </tr>
            </thead>
            <tbody>
                    <% 
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            CollectionJpaController collectionController = new CollectionJpaController(emf);
            /*collectionController.findCollectionEntities().forEach(collec -> System.out.println(collec));*/
           List<Collection> collections;
            collections = collectionController.findCollectionEntities();

                 %>
              <% for(int i = 0; i < collections.size();i++){ %>
              <tr>
                    <td><%= collections.get(i).getCollectionName()%></td>
                    <td><%= collections.get(i).getDescription()%></td>
                    <td>
                        <p style="text-align: center">
                        <% if(collections.get(i).getEnabled()) { %>
                           <span class="glyphicon glyphicon-ok-sign"></span>
                        <% }else{ %>
                            <span class="glyphicon glyphicon-remove-sign"></span>
                        <% } %>
                        </p>
                    </td>
                    <td>      
                       <p style="text-align: center">
                        <a href="editCollection.jsp?id_collection=<%= collections.get(i).getIdCollection()%>">
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
