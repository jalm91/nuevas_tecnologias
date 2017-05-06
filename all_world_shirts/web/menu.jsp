<%-- 
    Document   : menu.jsp
    Created on : 22/03/2017, 11:52:53 AM
    Author     : Home
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    model.Menu menu = new model.Menu();
    
%>
    <% 
         EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
         CollectionJpaController collectionController = new CollectionJpaController(emf);
         /*collectionController.findCollectionEntities().forEach(collec -> System.out.println(collec));*/
        List<Collection> collections;
         collections = collectionController.findCollectionEntities();
         
    %>
    <header class="glass">
         <div class="nav-container stickmenu clearfix header_menu" style="border-bottom:5px solid #c793a1;">

         <div class="inner">
           <!-- logo -->
                <a href="<%=menu.getCategories().get(0).getUrl()%>" class="logo">
                <img src="images/logo.png"/> 
               </a>
           <!-- end:logo -->    
            
           <!-- main-menu -->
           <ul class="main-menu">
                <!-- HOME -->
                <li class="multi-level-menu  active">
                	<a href="<%=menu.getCategories().get(0).getUrl() %>"><%=menu.getCategories().get(0).getCategory() %></a>
                </li>
               <!--submenu-->
               <!-- Collection -->
               <li class="multi-level-menu ">
                   <a href="#">Collection</a>
                      <ul class="sub-menu">
                          <!-- New Season-->
                          <li>
                            <span class="arrow"></span>
                              <a href="<%=menu.getCategories().get(1).getUrl()%>"><i class="fa iconos_menu_nube"></i><span><%=menu.getCategories().get(1).getCategory()%></span></a>
                                <ul>
                                <% 
                                for(int i = 0; i < collections.size();i++){

                                %>
                                <li><a href="collection.jsp?id_collection=<%= collections.get(i).getIdCollection()%>&collection_name=<%= collections.get(i).getCollectionName() %>&description=<%= collections.get(i).getDescription()%>"><span><%= collections.get(i).getCollectionName() %> </span></a></li>
                                 <%
                                 } 
                                 %>
                                </ul>                            
                          </li>
                          <!-- Old Collection-->
              					  <li>
                              <span class="arrow"></span>
                              <a href="#"> <i class="fa iconos_menu_router"></i><span>Colecciones Anteriores</span></a>
                              <ul>
                                  <li><a href="<%=menu.getCategories().get(2).getUrl()%>"><span><%=menu.getCategories().get(2).getCategory()%></span></a> </li>
                              </ul>
                          </li>
                      </ul>	            	
               </li>
               <!--end: submenu-->
               <!-- all world shirts -->
               <li class="multi-level-menu">
               	   <a href="<%=menu.getCategories().get(3).getUrl()%>"><%=menu.getCategories().get(3).getCategory()%></a>
               </li>
               <!-- Contact -->
               <li class="multi-level-menu">
               	   <a href="<%=menu.getCategories().get(4).getUrl()%>"><%=menu.getCategories().get(4).getCategory()%></a>
               </li>
           </ul>
           <!-- end:main-menu -->
        </div>
        <!--end:inner-->
        </div><!--end:nav-container-->
    </header>
 