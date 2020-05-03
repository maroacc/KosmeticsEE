<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 03/05/2020
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Prueba Imagen</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<% response.addCookie(new Cookie("id", "24")); %>
<body class="container">
<form action="subirImg" method="post" enctype="multipart/form-data">
    <input type="file" name="imagen[]" id="upload-files" accept="image/*" multiple="multiple">
    <label for="upload-files" class="upload-drop-zone" id="drop-zone">
    </label>
    <br>
    <br>
    <br>
    <br>
    <div>
        <input type="submit" value="Subir">
    </div>
</form>
</body>
</html>