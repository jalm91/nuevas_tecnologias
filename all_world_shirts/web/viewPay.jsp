<%-- 
    Document   : viewPay
    Created on : 2/06/2017, 11:26:09 PM
    Author     : Home
--%>

<%@page import="com.all_world_shirtts.entities.Payment"%>
<%@page import="java.util.List"%>
<%@page import="com.all_world_shirts.controllers.PaymentJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <% 
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
    PaymentJpaController productoController = new PaymentJpaController(emf);
    List<Payment> contacto;
    contacto = productoController.findPaymentEntities();
    
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
                <th>Tarjeta</th>
                <th>Número tarjeta</th>
                <th>Valor</th>
              </tr>
            </thead>
            <tbody>
            <% for(int i = 0; i < contacto.size();i++){ %>
                <tr>
                    <td><%= contacto.get(i).getNamePayment() %></td>
                    <td><%= contacto.get(i).getEmail() %></td>
                    <td><%= contacto.get(i).getTarjeta() %></td>
                    <td><%= contacto.get(i).getTarjetaNum() %></td>
                    <td><%= contacto.get(i).getValor() %></td>
                </tr>
            <% } %>
            </tbody>
          </table>
        </div>
    </body>
</html>
