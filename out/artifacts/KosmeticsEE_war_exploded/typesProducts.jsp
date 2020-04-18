<%--
  Created by IntelliJ IDEA.
  User: Nico
  Date: 04/04/2020
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:html="http://www.w3.org/2001/XInclude">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/styleMainPage.css">
    <title>Kosmetics</title>
</head>
<body>
<html:include page="nav.jsp"/>
<!--Aquí va la parte del kosmetics para empresas-->
<div class="container">
    <div class="kosmetics">
        <p id="titulo">Kosmetics</p>
    </div>
</div>
<!--Aquí lo de descubre el éxito de tu empresa-->
<div class="container">
    <div class="exito">
        <p id="exito">Descubre el éxito de tu empresa</p>
    </div>
</div>
<!--Primera línea de fotos-->
<div class="container">
    <section class="main row">
        <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="card" style="width: 200px;">
                <a><img src="assets/images/bases.jpg" class="card-img-top"></a>
                <p class="bases">Bases de maquillaje y primers</p>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="card" style="width: 200px;">
                <a><img src="assets/images/pintalabios.jpg" class="card-img-top"></a>
                <p style="padding-left: 10px">Estadísticas por categoría</p>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="card" style="width: 200px;">
                <a><img src="assets/images/estadIndividuales.jpg" class="card-img-top"></a>
                <p style="padding-left: 15px">Estadísticas individuales</p>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="card" style="width: 200px;">
                <a><img src="assets/images/coloretes.jpg" class="card-img-top"></a>
                <p style="padding-left: 10px">Coloretes e iluminadores</p>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="card" style="width: 200px;">
                <a><img src="assets/images/sombrasDeOjos.jpg" class="card-img-top"></a>
                <p style="padding-left: 50px">Competencia</p>
            </div>
        </div>
    </section>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>
