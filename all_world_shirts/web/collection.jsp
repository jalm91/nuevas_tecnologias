<%-- 
    Document   : colletion
    Created on : 7/04/2017, 10:13:47 PM
    Author     : Home
--%>

<%@page import="com.all_world_shirtts.entities.Producto"%>
<%@page import="com.all_world_shirts.controllers.ProductoJpaController"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
	<link rel="stylesheet" type="text/css" href="css/rev-settings.css" media="screen" />
	<!-- Style CSS -->
	<link href="style.css" rel="stylesheet">
    <!-- Customize CSS -->
	<link href="css/custom.css" rel="stylesheet">
    <!-- Responsive CSS -->
	<link href="css/responsive.css" rel="stylesheet">
    <!-- Theme Option CSS -->
    <link rel="stylesheet" href="css/theme-options.css" media="all">
    <!-- Switch Style -->
        <link rel="stylesheet" href="css/colors/default.css" type="text/css" id="colors" />
        <link rel="shortcut icon" href="placeholders/ico/favicon.ico" type="image/x-icon"> 
	<link rel="apple-touch-icon" href="placeholders/ico/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="placeholders/ico/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="72x72" href="placeholders/ico/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="placeholders/ico/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="144x144" href="placeholders/ico/apple-touch-icon-144x144.png">	 
    </head>
    <body>
        <% 
            Integer idCollection = Integer.parseInt(request.getParameter("id_collection")); 
            String collectionName = request.getParameter("collection_name");
            String collectionDescription = request.getParameter("description");
            
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
        ProductoJpaController productoController = new ProductoJpaController(emf);

        List<Producto> Productos;
        Productos = productoController.findProductoEntities();
         String urlImg = "images/products/";
        %>
       <div class="wrapper">    
    <!-- head-->
    <!-- inlcuir el menu -->
    <!-- end:header -->
    
    <section class="h2-hero">
    	<div class="fullwidthbanner-container ">
        <div id="banner" class="coleccion_banner2">
        </div><!--end:tp-banner-->
        </div><!--end:fullwidthbanner-container-->
    </section><!--end:h2-hero-->
	<div class="row contenedor_coleccion">
		<div class="text-heading large-head">
			<h1 class="tituolo" id="titulo"><%= collectionName %></h1>
		</div>
		<div class="coleccion_descripction">
			<p id="descripcion"><%= collectionDescription %></p>
		</div>

		<div class="col-lg-9 col-md-9 col-sm-12" style="float:none;margin:auto;">	
		<!-- Item 1 -->

		<div class="owl-carousel ca-list-items" data-edicion="<%= idCollection %>">
		    	</div><!--end:List-carousel-->
		    	<div class="owl-carousel ca-list-items" data-edicion="<%= idCollection %>">	    		
                                        <% for(int index =0;index< Productos.size();index ++){ %>
                                        <% if(Productos.get(index).getIdCollection() == idCollection && Productos.get(index).getEnabled()== true){ %>
					<div class="s1-item">
						<div class="product-thumb">
							<a href="<%= urlImg %><%= Productos.get(index).getImgDefault() %>" class="prettyPhoto"><img src="<%= urlImg %><%= Productos.get(index).getImgDefault() %>"></a>
				 		 </div>
				  		<div class="p-info">
                                                    <h4><%= Productos.get(index).getNameProduct() %></h4>
							<span>$&nbsp<%= Productos.get(index).getPrice() %>&nbspCOP</span>
					  		<nav>
								<a href="producto.jsp?id_producto=<%= Productos.get(index).getIdProduct() %>"><i class="fa fa-shopping-cart"></i> </a>
								<a href="<%= urlImg %><%= Productos.get(index).getImgDefault() %>" class="prettyPhoto"><i class="fa fa-search"></i> </a>
					  		</nav>  
				  		</div><!--end:p-info -->
					</div> <!--end:item-->
                                        <% } %>
                                        <% } %>
		</div>
		</div><!--end:col -->
	</div>  <!--end:row -->
	<!-- incluir el footer -->
    <a href="#" class="back-to-top"> <i class="fa fa-angle-up"></i> </a>
</div> <!--end:wrapper-->
	

<!--jQuery-->
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<!--Bootstrap-->    
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!--Parallax-->
	<script type="text/javascript" src="js/stellar.js"></script>
<!--Fancy Select-->
	<script type="text/javascript" src="js/fancySelect.js"></script>
<!--jQuery Ui-->
	<script type="text/javascript" src="js/jquery-ui.js"></script>
<!--Pretty Photo-->
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<!--Header Sticky -->
    <script type="text/javascript" src="js/waypoints.min.js" ></script>
<!--Mobile Menu -->    
	<script type="text/javascript" src="js/modernizr.custom.js"></script>
	<script type="text/javascript" src="js/jquery.dlmenu.js"></script>
<!--Owl Carousel-->
	<script type="text/javascript" src="js/owl.carousel.js"></script>
<!--iSotope-->
	<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
<!--Circle Chart-->
	<script type="text/javascript" src="js/jquery.circliful.min.js"></script>         
<!--scrollReveal-->
	<script type="text/javascript" src="js/scrollReveal.js"></script>
<!--Html5 player-->    
    <script type="text/javascript" src="js/mediaelement-and-player.min.js"></script>
<!--Countdown--> 
    <script type="text/javascript" src="js/TimeCircles.js"></script>
<!--Counter Up-->     
    <script type="text/javascript" src="js/jquery-counterup.js"></script> 
<!-- Responsive video -->
	<script type="text/javascript" src="js/jquery.fitvids.js"></script>
<!--Flat Surface Shader -->     
    <script type="text/javascript" src="js/fss.js"></script>
<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>    
<!--Onepage scroll-->     
    <script type="text/javascript" src="js/jQuery-scrollnav.js"></script>        
<!--Background video-->     
    <script type="text/javascript" src="js/jquery.mb.YTPlayer.js"></script>             
<!--Switch Style-->    
    <script src="js/styleswitch.js"></script>          
<!--Retina support-->
	<script type="text/javascript" src="js/retina.js"></script>
<!--Main Script-->
	<script type="text/javascript" src="js/main.js"></script> <!--Custom Script--> 

<script type="text/javascript">
		/*$(document).ready(function(){
			var botones = document.querySelectorAll('.btn.btn-default');
			for(var index=0;index < botones.length;index++)
			{
				if(index=={$edicion-1})
				{
					botones[index].click();
				}
			}
		});
	   function coleccion(elemento,slider)
		{
			if(slider==1){
				var tituloi="Josep Maria Cabayol";
				var descripcioni="An oil based mixture between figurative art and extreme realism.";
				$('#banner').removeClass("coleccion_banner2");
				$('#banner').addClass('coleccion_banner1');
			}else{
				var tituloi="Dimond Canvas";
				var descripcioni="Luxury time pieces and Realism Monochrome Pop-Art";
				$('#banner').removeClass("coleccion_banner1");
				$('#banner').addClass('coleccion_banner2');
			}
			document.getElementById("titulo").innerHTML = tituloi;
			document.getElementById("descripcion").innerHTML = descripcioni;
			var botones = document.querySelectorAll('.btn.btn-default');
			var sliders = document.querySelectorAll('.owl-carousel.ca-list-items');
			for (i=0;i<sliders.length;i++)
			{
				if(sliders[i].getAttribute('data-edicion')==slider)
				{
					$(sliders[i]).slideDown('slow');			
				}
				else
				{
					$(sliders[i]).slideUp('slow');	
				}
				$(botones[i]).removeClass("btn_coleccion");
			}
			$(elemento).addClass('btn_coleccion');
		}*/
</script>
</body>
    </body>
</html>
