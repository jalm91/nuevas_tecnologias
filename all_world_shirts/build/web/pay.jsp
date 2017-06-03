<%-- 
    Document   : pay
    Created on : 2/06/2017, 10:50:08 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pagar</title>
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
                Integer idProduct = Integer.parseInt(request.getParameter("id_producto"));              
                Integer cantidad = Integer.parseInt(request.getParameter("cantidad"));              
                Integer precio = Integer.parseInt(request.getParameter("prec"));     

            %>
        
    </body>
       <div id="main">
        <form action="SavePayment">
	   <div class="container">
                    
            	<div class="col-md-7   portfolio-single-content">
 
                 <!-- Google Map -->
          
                 		<div class="col-md-12">
                        	<div class="text-heading line"> <h3>Información de pago</h3> </div>
                         <div class="contact-wrap">
                         		<form id="contact-form" action="#" method="post">
                              
                                 <label class="required" for="name">Nombre <span>*</span></label>
                                 <input class="valid" type="text" name="name" id="name" value="" required>
                                 <label class="required" for="email">Email <span>*</span></label>
                                 <input type="email" class="valid" name="email" id="email" value="" required>
                                                                  <div class="form-group">
  <label for="tarjeta">Select list:</label>
  <select class="form-control" id="tarjeta" name="tarjeta">
    <option>MASTER CARD</option>
    <option>VISA</option>
    <option>DINNERS</option>
  </select>
</div>
                                 <label class="required" for="tarjeta_num">Número de tarjeta</label>                                                            
                                 <input type="text" value="" id="tarjeta_num" name="tarjeta_num" required>
                                 <label class="required" for="codigo">Codigo de seguridad</label>                                                            
                                 <input type="text" value="" id="codigo" name="codigo" required>
                                 <label class="required" for="valor">Valor a pagar</label>                                                            
                                 <input type="hidden" value="<%= cantidad * precio %> Dolares" id="valorp" name="valorp">
                                 <input type="text" value="<%= cantidad * precio %> Dolares" id="valor" name="valor" disabled>
                              <p>                    
                                  <button class="btn btn-violet btn-lg btn-block" type="submit" id="submit-contact"  value="Send message"> Pagar </button>
                              </p>      	
                            </form>
                            
                         </div>
                      </div><!--end:col-->  	
          
              </div><!--end:colright-->
         </div><!--end:container--> 	
       </form>
    </div><!--end:main-->
</html>
