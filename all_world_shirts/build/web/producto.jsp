<%-- 
    Document   : producto
    Created on : 6/05/2017, 08:54:58 AM
    Author     : Home
--%>

<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="com.all_world_shirtts.entities.Producto"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="com.all_world_shirts.controllers.ProductoJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.Persistence"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
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
    
    
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="assets/js/html5shiv.js"></script>
	  <script src="assets/js/respond.min.js"></script>
	<![endif]-->

	<!-- Favicons -->
	<link rel="shortcut icon" href="placeholders/ico/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="placeholders/ico/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="placeholders/ico/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="72x72" href="placeholders/ico/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="placeholders/ico/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="144x144" href="placeholders/ico/apple-touch-icon-144x144.png">	
    </head>
    <body>
         <% 
            Integer idProducto = Integer.parseInt(request.getParameter("id_producto"));             
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
            ProductoJpaController productoController = new ProductoJpaController(emf);

        Producto Product;
        Product = productoController.findProducto(idProducto);
         String urlImg = "images/products/";
         
  CollectionJpaController collectionController = new CollectionJpaController(emf);
         /*collectionController.findCollectionEntities().forEach(collec -> System.out.println(collec));*/
        Collection collect;
         collect = collectionController.findCollection(Product.getIdCollection());
        %>       
<!--wrapper-->
<div class="wrapper">    
    <!-- head-->
    <!-- incluir el menu -->
    <!-- end:header -->
    
    <section class="h2-hero">
    	<div class="fullwidthbanner-container ">
        <div class="{$coleccion_banner}">
        </div><!--end:tp-banner-->
        </div><!--end:fullwidthbanner-container-->
    </section><!--end:h2-hero-->
    <div id="main">
        <input name ="idProducto" type="hidden" value ="<%= idProducto %>"/>
    	<div class="container">
        	<div class="row">
            	<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
               	<div class="row">
                		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        
                        	<div class="gallery-thumb">
                            <ul id="preview" class="nav-inside">
                                <li><a href="<%= urlImg %><%= Product.getImgDefault() %>" class="prettyPhoto mask" > <img src="<%= urlImg %><%= Product.getImgDefault() %>"></a></li>
                                <li><a href="<%= urlImg %><%= Product.getImgDefault() %>" class="prettyPhoto mask" > <img src="<%= urlImg %><%= Product.getImgDefault() %>"></a></li>
                            </ul>
                            <ul id="thumb" class="nav-inside">
                                
                                <li><img src="<%= urlImg %><%= Product.getImgDefault() %>"></li>
                                <li><img src="<%= urlImg %><%= Product.getImgDefault() %>"></li>
                                
                            </ul>
                            
                        </div><!--end:pro-images-->
                     	</div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                     		<div class="summary">
                            <h2><%= Product.getNameProduct() %></h2>
                            <section class="price">
                            		<h1>$&nbsp<%= Product.getPrice() %>&nbspUS</h1>
                                <div class="clear"></div>    
                            </section>
                            <p class="desc"><%= Product.getDescription()%></p>
                            <input type="radio" name="sexo" onclick="mostrarHombre(Hombre)" checked> Hombre &nbsp&nbsp&nbsp&nbsp
                            <input type="radio" name="sexo" onclick="mostrarMujer(Mujer)"> Mujer <br><br>
                            <!-- <input type="text" value="48" /> -->
                            <div id="Hombre" style="display: block;">
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="44">44</button>
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="46">46</button>
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="48">48</button>
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="50">50</button>
                            </div>

                            <div id="Mujer" style="display: none;">
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="36">36</button>
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="38">38</button>
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="40">40</button>
                            <button type="button" class="btn btn-small btn-default btn-line" onclick = "btnTallas(this);" value="42">42</button>
                            </div>

                            <br>
                            <br>
                              <label for="cantDisp"><b>Stock&nbsp&nbsp</b></label><input id="cantDisp" type="text" value="<%= Product.getCantidad() %>" readonly />
                            <br>
                            <br>
                            <div class="cart">
                            		<form id='s-quality' method='POST' action='#'>
                                    <input type='button' value='-' class='qtyminus' field='quantity' />
                                    <input type='text' name='quantity' value='0' class='qty' />
                                    <input type='button' value='+' class='qtyplus' field='quantity' />
                                </form>
                                    <button class="btn btn-dark fr btn_producto" type="button" onclick = "addCarrito();"> <i class="fa fa-shopping-cart"></i> Comprar</button>
                                    <input name = "id_prod" id="id_prod" type="hidden" value = "<%= Product.getIdProduct() %>">
                            </div><!--end:cart-->
                            <div class="product_meta">
                                <form action="collection.jsp" method="GET">
							     	<button type="submit" class="btn btn-default"> 	Back to Collection </button>
                                    <input name = "collection_name" type="hidden" value = "<%= collect.getCollectionName() %>">
                                    <input name = "id_collection" type="hidden" value = "<%= collect.getIdCollection() %>">
                                    <input name = "description" type="hidden" value = "<%= collect.getDescription() %>">
                                </form>
                            </div>

                            
                         </div><!--end:summary-->
                     	</div>  
                    
                  </div><!--end:row--> 
    
              		
    
            	</div><!--end:col left -->
                
            	
              
           </div><!--end:row-->
        </div><!--end:container-->
   
    </div><!--end:main-->
    <!-- jalm incluir footer-->
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
  <script type="text/javascript" src="js/jquery.price_format.min.js"></script>
  <input id="htmlfield" type="hidden" value="" />
    </body>
    <script type="text/javascript">

    function mostrarHombre(elemento) {
      $(elemento).show();
      $('#Mujer').hide();
    }
    function mostrarMujer(elemento) {
      $(elemento).show();
      $('#Hombre').hide();
    }

    function btnTallas(elemento)
    {
        
        var botones = document.querySelectorAll('.btn.btn-small.btn-default.btn-line');
        for (var i = 0; i < botones.length; i++) {
                botones[i].setAttribute("data-tallaselect",'0');
                $(botones[i]).removeClass('btn_coleccion');
            };    
            elemento.setAttribute("data-tallaselect",'1')
            $(elemento).addClass('btn_coleccion');
    }
    
    
var READY_STATE_COMPLETE = 4;
var peticion_http = null;
function inicializa_xhr()
{
   if(window.XMLHttpRequest)
   {
    return new XMLHttpRequest();
   }else if(window.ActiveXObject){
     return new ActiveXObject("Microsoft.XMLHTTP");     
   }
}

function addCarrito(){    
    var cant = document.querySelector('input[name="quantity"]').value;
    window.location="pay.jsp?id_producto=<%= idProducto %>&cantidad=" + cant + "&prec=<%= Product.getPrice() %>";
}

function addCarrito_new()
{
    var producto = document.getElementById('id_prod').value;
    var talla    = document.querySelector('[data-tallaselect="1"]');
    var cantidad = document.querySelector('input[name="quantity"]');
    if(producto != null && producto !=undefined && producto.length != 0 && talla !=null && talla != undefined && talla.length !=0
        && cantidad != null && cantidad !=undefined && cantidad.length !=0 && cantidad.value !=0
      )
    {
        addCarritoXML(producto,talla.value,cantidad.value);       
    }
    else
    {
       // alert('falso');
    }
}
function addCarritoXML (producto,talla,cantidad) {

  peticion_http = inicializa_xhr();
  if (peticion_http) {
    peticion_http.onreadystatechange = function () {
         if (peticion_http.readyState==READY_STATE_COMPLETE) {
             if (peticion_http.status==200) {
               var respuesta = peticion_http.responseText;
               if(respuesta==null || respuesta==undefined || respuesta.length==0)
               {
                 alert("No hay respuesta");
               }
               else{
                 respuesta = JSON.parse(respuesta);
                 var cadena = ''; 
                 var totales = 0;
                for (var i = 0; i < respuesta.length; i++) {
                    cadena += '<li>';
                    cadena += '<a href="#">';
                    cadena += '<img class="attachment-shop_thumbnail wp-post-image" src="images/coleccion/' + respuesta[i].img + '">';
                    cadena += '<h6 class="hcartop">' + respuesta[i].nombre + '&nbspSize&nbsp' + respuesta[i].talla + '</h6>';
                    cadena += '</a>';
                    cadena += '<span class="quantity">';
                    var precio = respuesta[i].precio;
                    totales = parseFloat(precio) * parseInt(respuesta[i].cantidad) + totales;
                    cadena += '<span class="scartop">' + respuesta[i].cantidad +'&nbsp</span> × <span class="hcartop">$&nbsp' +  formato_numero(precio) + '&nbspCOP</span>';
                    cadena += '</span>';
                    cadena +='</li>';
                };
        
                document.querySelector('.cart_list.product_list_widget').innerHTML = cadena;
                document.querySelector('p.total>span').innerHTML = '$&nbsp' + formato_numero(totales) + '&nbspCOP';
                document.querySelector('.carTotal').innerHTML = respuesta.length;
                document.querySelector('.tituloCart').innerHTML = '<strong>' + respuesta.length + '&nbsp' + ((respuesta.length>1)? 'Items':'Item')+ '</strong> In The Shopping cart';
               }
             }

         }
    };
    peticion_http.open("POST","conf/controller.carrito.php",false);
    peticion_http.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    peticion_http.send("task=" + encodeURIComponent('addCarrito')+ "&id_prod="+encodeURIComponent(producto) + "&talla=" + encodeURIComponent(talla) + "&cantidad=" + encodeURIComponent(cantidad) + " &nocache="+Math.random());
  }
}

function formato_numero(numero){ // v2007-08-06
  $('#htmlfield').val(numero);
   $('#htmlfield').priceFormat({
              prefix: '$ ',
              clearPrefix: true,
              centsLimit:0,
              centsSeparator: '.',
              thousandsSeparator: '.'
  }); 
   return  $('#htmlfield').val();
}

</script>
</html>
