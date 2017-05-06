<%-- 
    Document   : index
    Created on : 22/03/2017, 12:10:07 PM
    Author     : Home
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.all_world_shirtts.entities.Collection"%>
<%@page import="com.all_world_shirts.controllers.CollectionJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All World shirts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
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
    <body onload="mueveDivs()">         
<!--wrapper-->

<div class="wrapper">    
    <!-- head-->
	<%@include file="menu.jsp" %>
    <!-- end:header -->     
    <section class="h2-hero">
    	<div class="fullwidthbanner-container">
        <div class="tp-banner" >
            <ul>	<!-- SLIDE  -->
              <li data-transition="fade" data-slotamount="7" data-masterspeed="1000" >
                	<!-- MAIN IMAGE -->
                  <img src="images/sliders/home/home_01.png"  alt="slidebg1"  data-bgfit="100%" data-bgposition="left top" data-bgrepeat="no-repeat">  

              </li>
              
              <li data-transition="fade" data-slotamount="7" data-masterspeed="1000" >
                	<!-- MAIN IMAGE -->
                  <img src="images/sliders/home/home_02.png" style="" alt="slidebg2"  data-bgfit="100%" data-bgposition="left top" data-bgrepeat="no-repeat">
              </li>
              <li data-transition="fade" data-slotamount="7" data-masterspeed="1000" >
                	<!-- MAIN IMAGE -->
                  <img src="images/sliders/home/home_03.png" style="" alt="slidebg2"  data-bgfit="100%" data-bgposition="left top" data-bgrepeat="no-repeat">
                      
              </li>

           </ul>
        </div><!--end:tp-banner-->
        </div><!--end:fullwidthbanner-container-->
    </section><!--end:h2-hero-->
        <section>
		<article>
			<div id="articulo01" class="contienearticulo">
			</div>
			<div id="articulo0" class="contienearticulo">
				<div class="text-heading large-head">
					<h1>El verano</h1>
					<div class="iconos_home iconos_camara"></div>
				</div>
				<p>Lo mejor de las colecciones de varano de este 2016 no te lo pierdas</p>
			</div>
			<div id="articulo0" class="contienearticulo">
				<div class="text-heading large-head">
					<h1>Otoño</h1>
					<div class="iconos_home iconos_nube"></div>
				</div>
				<p> La Nueva temporada trae consigo grandes cambios de estilo aprovechalos</p>
			</div>
			
		</article>
	</section>
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
	<script type="text/javascript">
		
		var articulos = document.querySelectorAll('.contienearticulo');
		var slideAnterior = 0;
		function mueveDivs() {
			var puntos = document.querySelectorAll('.bullet');		 
			for (var i = 0; i < puntos.length; i++) {
					if((puntos[i].getAttribute('class')).indexOf('selected')!=-1)
					{
						if(slideAnterior!=i)
						{
							$(articulos[slideAnterior]).fadeOut(1000);
		    				$(articulos[i]).fadeIn(2000);	
							slideAnterior = i;
						}
						break;
					}
		       };

		
		    setTimeout(function(){ mueveDivs() }, 300);
		}
	</script>
    </body>
</html>
