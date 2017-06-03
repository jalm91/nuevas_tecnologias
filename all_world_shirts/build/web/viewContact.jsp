<%-- 
    Document   : viewContact
    Created on : 2/06/2017, 10:13:59 PM
    Author     : Home
--%>

<%@page import="com.all_world_shirtts.entities.Contact"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="com.all_world_shirts.controllers.ContactJpaController"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Contact</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    <% 
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
    ContactJpaController productoController = new ContactJpaController(emf);
    List<Contact> contacto;
    contacto = productoController.findContactEntities();
    
    %>
     <div class="container">
        <a href="admin.jsp">
          <span class="glyphicon glyphicon-home"></span>
        </a>
          <h2>Listado de mensajes</h2>
                    <table class="table">
            <thead>
              <tr>
                <th>Nombre</th>
                <th>Email</th>
                <th>Asunto</th>
                <th>Mensaje</th>
              </tr>
            </thead>
            <tbody>
            <% for(int i = 0; i < contacto.size();i++){ %>
                <tr>
                    <td><%= contacto.get(i).getNameContact() %></td>
                    <td><%= contacto.get(i).getEmail() %></td>
                    <td><%= contacto.get(i).getAsunto() %></td>
                    <td><%= contacto.get(i).getMensaje() %></td>
                </tr>
            <% } %>
            </tbody>
          </table>
        </div>
    </body>
</html>
