<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 20/04/2020
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<body class="bg-light">

<div class="d-flex flex-md-row align-items-center p-3 px-md-4 mb-0 bg-white border-bottom shadow-sm">
    <img id="logo" src="assets/images/LogoBueno.svg">
    <h5 class="my-0 mr-md-auto font-weight-bold">osmetics</h5>
    <form class="form-inline my-2 my-lg-0 mr-md-auto d-none d-lg-block">
        <input class="form-control mr-sm-2 d-none d-lg" type="search" placeholder="Search" aria-label="Search">
    </form>
    <nav class="my-2 my-md-0 mr-md-3 ml-auto">
        <a class="p-2 text-dark" href="#">Iniciar sesión</a>
    </nav>
    <a class="btn btn-outline-primary" href="#">Unirse</a>
</div>

<div class="row px-lg-5 bg-light py-5">
<c:forEach var="producto" items="${listaProductos}">
    <div class="col-12 col-md-4 col-lg-3 bg-light">
        <!-- Card -->
        <div class="card mb-7 bg-light border-0">

            <!-- Image -->
            <div class="card-img">

                <!-- Image -->
                <a href="ServletInfoProducto?producto=${producto.name}"><img class="card-img-top" src="assets/images/honest-beauty-mascara.jpg" alt="..."></a>

            </div>

            <!-- Body -->
            <div class="card-body font-weight-bold text-center">
                <a class="text-body" href="#"><c:out value="${producto.name}"></c:out></a>
                <div class="text-muted"><del><c:out value="${producto.price}"></c:out>  € </del><c:out value="${producto.offer}"></c:out> €</div>
            </div>

        </div>

    </div>
</c:forEach>

</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
