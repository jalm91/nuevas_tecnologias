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
        <style type="text/css">
            h1{
                text-align: center;
            }
            #container{
                margin:auto;
                /*border:1px solid blue;*/
                overflow:hidden;
                max-width: 80%; 
            }
            .item {
                background: #fff;
                width: 290px;
                border:1px solid #d9d9d9;
                padding:0px;
                margin:10px;
                border-radius: 3px;
                overflow: hidden;
                position:relative;
                color:#6d6d6d;
                float: left;
            }
            .item-thumb{
                max-height: 40%;
            }
            .item-thumb:hover{
                opacity:0.5;
            }
            .item-thumb:hover + .item-description{
                transition-delay: .3s;
                max-height: 100px;
            }
            h4,p
            {
                text-align:center;
            }
            p{
                color:#000;
                font-size: 16px;
                font-weight: bolder;
            }
            h4{
                color:#902844;
            }
            .item img{
                max-width: 100%;
                height: auto;
            }
            .item-description{
                border-top: 1px solid #d9d9d9;
                max-height: 60px;
                overflow: hidden;
            }
        </style>
    </head>
    <body>
        <h1>Bienvenido a la Colección!</h1>
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
                <div id="container">
                <% 

                    
                 for(int i= 0;i< Products.size();i++)
                {
                %>
                <div class="item">
                    <div class="item-thumb">
                        <img src="images/products/<%= Products.get(i).getImgDefault() %>">
                    </div>
                    <div class="item-description">
                        <!-- <p>Id Producto <%= Products.get(i).getIdProduc() %></p>
                        <p>Id Collection <%= Products.get(i).getIdCollection() %></p> -->
                        <h4><%= Products.get(i).getNameProduct() %></h4>
                        <p>$ <%= Products.get(i).getPrice() %> COP</p>
                    </div>
                </div>
                <% 
                }
                %>
                </div>
    </body>
</html>
