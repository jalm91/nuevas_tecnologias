<%-- 
    Document   : colletion
    Created on : 7/04/2017, 10:13:47 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@ page import="java.util.ArrayList" language="java" %>
              <% 
                 
                  /*ArrayList<com.schedule.dao.domain.Contact> x = new ArrayList<com.schedule.dao.domain.Contact>();
                com.schedule.dao.ViewContacDao classContacts = new com.schedule.dao.ViewContacDao();
                x = classContacts.getUsers();*/
                
                
                  Integer idCollection = Integer.parseInt(request.getParameter("id_collection")); 
                   ArrayList<com.all_wolrd_shirts.dao.domain.Product> Products = new  ArrayList<com.all_wolrd_shirts.dao.domain.Product>();
                   com.all_world_shirts.dao.ViewCollecionDao ViewProducts = new com.all_world_shirts.dao.ViewCollecionDao();
                   Products = ViewProducts.getProductsByCollection(idCollection);
                    
                %>
                <%
                    
                    
                 for(int i= 0;i< Products.size();i++)
                {
                %>
                <p>Id Producto <%= Products.get(i).getIdProduc() %></p>
                <p>Id Collection <%= Products.get(i).getIdCollection() %></p>
                <p>Price <%= Products.get(i).getPrice() %></p>
                <p>Name Product <%= Products.get(i).getNameProduct() %></p>
                <p>Img <%= Products.get(i).getImgDefault() %></p>
                <% 
                }
                %>
    </body>
</html>
