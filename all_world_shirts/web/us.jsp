<%-- 
    Document   : us
    Created on : 23/03/2017, 12:02:44 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Nosotros</title>

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

    
<!--wrapper-->
<div class="wrapper">    
    <!-- head-->
    <%@include file="menu.jsp" %>
    <!-- end:header -->
    
    <section class="h2-hero">
    	<div class="fullwidthbanner-container ">
        <div class="nosotros_banner">
        </div><!--end:tp-banner-->
        </div><!--end:fullwidthbanner-container-->
    </section><!--end:h2-hero-->
    <div id="main">
    	<div class="container">
        	<div class="row portfolio-single">
           		<div class="col-lg-6  port-images">
                    <ul class="single-gallery nav-inside">
                        <li><a href="images/banners/nosotros/Shadow_01.png" class="prettyPhoto"><img src="images/banners/nosotros/Thumb_01.png"></a></li>
                        <li><a href="images/banners/nosotros/Shadow_02.png" class="prettyPhoto"><img src="images/banners/nosotros/Thumb_02.png"></a></li>
                        <li><a href="images/banners/nosotros/Shadow_03.png" class="prettyPhoto"><img src="images/banners/nosotros/Thumb_03.png"></a></li>
                        <li><a href="images/banners/nosotros/Shadow_04.png" class="prettyPhoto"><img src="images/banners/nosotros/Thumb_04.png"></a></li>
                    </ul> <!--end:slide-->
            	</div>
            
            	<div class="col-lg-6 col-md-1 col-sm-4 col-xs-12 portfolio-single-content">
 
                        <div id="testimonials-slide" class="owl-carousel nav-inside">
                        <div>
                            <div class="s-testimonial">
                                  <div class="text-heading large-head left"> <h2>Misión</h2> </div>
                                  <div class="desc">
                                    <p>Mostrar las mejores opciones en camisetas de ultima moda y exclusivo diseño.</p>
                                  </div>  
                                 <div class="text-heading large-head left"> <h2>Visión</h2> </div>
                                  <div class="desc">
                                    <p>Ser reconocidos como la mejor tienda de camisetas exclusivas en colombia.</p>
                                  </div>
                            </div><!--end:s-testimonial-->  
                        </div>
                          <div>
                            <div class="s-testimonial">
                                  <div class="text-heading large-head left"> <h2>Acerca de nosotros</h2> </div>
                                  <div class="desc">
                                    <p>Somos una tienda de camisetas en linea que pretende ofecer un producto exclusivo y variado.</p>
                                  </div>  
                                 <div class="text-heading large-head left"> <h2>Que hacemos</h2> </div>
                                  <div class="desc">
                                    <p>Buscamos y creamos los mejores diseños para ofrecer productos de calidad y exclusividad.</p>
                                  </div>
                            </div><!--end:s-testimonial-->  
                        </div>
                    </div>
 
              </div><!--end:colright-->
           </div><!--end:row-->
        </div><!--end:container-->
   
    </div><!--end:main-->
    <%@include file="footer.jsp" %>
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
</body>
</html>
