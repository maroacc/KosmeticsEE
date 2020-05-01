<%@ page import="Dominio.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: Nico
  Date: 29/04/2020
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en" xmlns:html="http://java.sun.com/JSP/Page">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">

    <title>Sube tus productos</title>
</head>
<body>
<jsp:include page="nav.jsp"/>

<div class="container">
    <c:forEach var="product" items="${sessionScope.productos}">
    <div class="row row-cols-1 row-cols-lg-2">
        <div class="col">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="assets/images/honest-beauty-mascara.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="assets/images/honest-beauty-mascara.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="assets/images/honest-beauty-mascara.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col d-md-block">
            <div class="p-3 py-lg-5">
                <div class="d-flex my-3 justify-content-between">
                    <h1><c:out value="${product.name}"></c:out></h1>
                    <form action="editar-producto" method="post">
                        <button type="submit" class="btn btn-outline-dark my-1">Editar Producto</button>
                    </form>
                </div>

                <div class="d-inline-flex">
                    <ul class="list-inline my-3">
                        <li class="list-inline-item text-danger h4"><del><c:out value="${product.price}"></c:out></del></li>
                        <li class="list-inline-item"><c:out value="${product.nuevoPrecio}"></c:out></li>
                    </ul>

                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
                <h3 class="h3">Colores</h3>
                <div>
                    <ul class="list-inline my-3">
                        <li class="list-inline-item p-1"><img class="img-fluid" src="assets/images/deep1.png" height="25" width="25"></li>
                        <li class="list-inline-item p-1"><img class="img-fluid" src="assets/images/deep1.png" height="25" width="25"></li>
                        <li class="list-inline-item p-1"><img class="img-fluid" src="assets/images/deep1.png" height="25" width="25"></li>
                        <li class="list-inline-item p-1"><img class="img-fluid" src="assets/images/deep1.png" height="25" width="25"></li>
                        <li class="list-inline-item p-1"><img class="img-fluid" src="assets/images/deep1.png" height="25" width="25"></li>
                        <li class="list-inline-item p-1"><img class="img-fluid" src="assets/images/deep1.png" height="25" width="25"></li>
                    </ul>
                </div>
                <h3 class="h3">Características</h3>
                <ul class="list-inline my-3">
                    <li class="list-inline-item alert alert-info p-1">Lorem ipsum.</li>
                    <li class="list-inline-item alert alert-info p-1">Lorem ipsum.</li>
                    <li class="list-inline-item alert alert-info p-1">Lorem ipsum.</li>
                    <li class="list-inline-item alert alert-info p-1">Lorem ipsum.</li>
                    <li class="list-inline-item alert alert-info p-1">Lorem ipsum.</li>
                    <li class="list-inline-item alert alert-info p-1">Lorem ipsum.</li>

                </ul>
            </div>

        </div>
    </div>
    </c:forEach>
    <form action="nuevoProducto" method="post">
        <button class="btn btn-primary btn-lg btn-block mt-5" type="submit">Cargar Productos</button>
    </form>
    <br/><br/>
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
