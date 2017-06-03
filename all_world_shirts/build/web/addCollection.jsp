<%-- 
    Document   : addCollection
    Created on : 29/05/2017, 11:13:33 AM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear una nueva colección</title>
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>Crear una nueva colección</h2>
            <form action="add_collection">
              <div class="form-group">
                <label for="collection_name">Nombre de la colección:</label>
                <input type="text" class="form-control" id="collection_name" placeholder="Ingrese el nombre de la colección" name="collection_name" required>
              </div>
              <div class="form-group">
                <label for="collection_description">Descripción de la colección:</label>
                <input type="text" class="form-control" id="collection_description" placeholder="Ingrese la descripción de la coleccción" name="collection_description" required>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" name="collection_enabled"> Habilitada?</label>
              </div>
              <button type="submit" class="btn btn-default">Crear</button>
            </form>
        </div>
    </body>
</html>
