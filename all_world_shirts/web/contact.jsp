<%-- 
    Document   : contact
    Created on : 23/03/2017, 12:10:31 PM
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

	<title>Contactanos</title>

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
    
    <section id="goole-map">
            <div id="map"></div>
    </section> 
                  
    <div id="main">
	
	    	<div class="container">
           		<div class="col-lg-4">
                <div class="text-heading large-head left">
                  	<h1>informacion de Contacto</h1>
                  	<span><i class="fa fa-phone fa-2x"></i>&nbsp&nbsp3472311</span>
					<span><i class="fa fa-globe fa-2x"></i>&nbsp&nbsp<p> Cra. 9 Bis #62-43,</p><p>Bogotá, Cundinamarca</p></span>
                 </div><!--end:text-heading-->
           
				<div class="text-heading large-head left">
                  	<h1>Información adicional</h1>
					<br>
                  	<p>Trabajo para el proyecto de nuevas técnolgias</p>
                </div><!--end:text-heading-->
				  
            	</div>
            
            	<div class="col-md-7   portfolio-single-content">
 
                 <!-- Google Map -->
          
                 		<div class="col-md-12">
                        	<div class="text-heading line"> <h3>Dejanos un mensaje</h3> </div>
                         <div class="contact-wrap">
                         		<form id="contact-form" action="#" method="post">
                              
                                 <label class="required" for="contact_name">Nombre <span>*</span></label>
                                 <input class="valid" type="text" name="name" id="contact_name" value="">
                                 <label class="required" for="contact_email">Email <span>*</span></label>
                                 <input type="email" class="valid" name="email" id="contact_email" value="">
                                 <label class="required" for="contact_url">Asunto</label>                                                            
                                 <input type="url" value="" id="contact_url" name="url">
                                  <label class="required" for="contact_message">Mensaje <span>*</span></label>
                                    <textarea rows="6" cols="40" id="contact_message" name="message"></textarea>
                              <p>                    
                                  <button class="btn btn-violet btn-lg btn-block" type="submit" id="submit-contact"  value="Send message"> Send </button>
                              </p>      	
                            </form>
                            
                         </div>
                      </div><!--end:col-->  	
          
              </div><!--end:colright-->
   
           
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
<!--Google Map-->
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>   
<script type="text/javascript">
    	window.onload = function () {

		'use strict';
	
		var latlng = new google.maps.LatLng(4.6485233, -74.0615742,15);
		var styles = [
	
		];
	
		var myOptions = {
			zoom: 14,
			center: latlng,
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			disableDefaultUI: true,
			scrollwheel: false,
			styles: styles
		};
	
		var contentString = '<div id="content">' +
			'<div id="siteNotice">' +
			'</div>' +
			'<h4>Estamos Aqui</h4>' +
			'<p>Konrad Lorenz' +
			'</p>' +
			'</div>';
	
		var infowindow = new google.maps.InfoWindow({
			content: contentString
		});
	
		var map = new google.maps.Map(document.getElementById('map'), myOptions);
	
		var myLatlng = new google.maps.LatLng(4.6485233, -74.0615742,15);
	
		var image = 'images/marker.png';
		var marker = new google.maps.Marker({
			position: myLatlng,
			map: map,
			title: 'Hello World!',
			/*icon: image para no mostrar imagen*/
		});
		google.maps.event.addListener(marker, 'click', function () {
			infowindow.open(map, marker);
		});
	
	}
</script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyApg2C6KrEh3zziYgIQ-hVQPhR7f_7rIlc&callback=initMap">
    </script>
</body>
</html>
