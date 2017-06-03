<%-- 
    Document   : admin
    Created on : 29/05/2017, 09:18:13 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel de administración</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
          <h2>Panel de administración</h2>
          <div class="list-group">
            <a href="viewCollections.jsp" class="list-group-item">Administrar colecciones</a>
            <a href="viewProductos.jsp" class="list-group-item">Administrar productos</a>
            <a href="viewContact.jsp" class="list-group-item">Administrar Mensajes</a>
            <a href="viewPay.jsp" class="list-group-item">Administrar Pagos</a>
          </div>
        </div>
    </body>
</html>
