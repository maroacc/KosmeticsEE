<%--
  Created by IntelliJ IDEA.
  User: Nico
  Date: 18/04/2020
  Time: 19:49
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
    <link rel="stylesheet" type="text/css" href="css/styleProfile.css">
    <!--Falta poner el nombre de la marca en el perfil-->
    <title>Perfil · Kosmetics</title>
</head>
<body>
<!--Falta poner el nav-->
<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-8">
            <div class="row">
                <img class="img-fluid rounded logo mt-3" src="assets/images/honest-beauty-logo.jpg">
                <div class="row">
                    <h1 class="col-12 col-xl-9">Honest Beauty</h1>
                    <div class="col-12 col-xl-3 my-2">
                        <button class="mx-1 m-md-0 col-12 btn btn-outline-info ">Editar perfil</button>
                    </div>
                    <p class="col-12">Download free, beautiful high-quality photos curated by Honest beauty</p>
                </div>

            </div>
        </div>
    </div>
    <c:if test="${empty latestBrandProducts}">
        <div class="d-flex justify-content-center row mt-5">
            <h5 class="col-12 text-center mb-3" style="color:#888888" >Parece que aún no hay productos...</h5>
            <img src="assets/icons/nature.svg" height="128" width="128">
        </div>
    </c:if>

    <div class="row px-lg-5 bg-light py-5">
        <c:forEach var="producto" items="${latestBrandProducts}">
            <div class="col-12 col-md-4 col-lg-3 bg-light">
                <!-- Card -->
                <div class="card mb-7 bg-light border-0">

                    <!-- Image -->
                    <div class="card-img">

                        <!-- Image -->
                        <c:if test="${param.estad}">
                            <a href="EstadProducto.jsp"><img class="card-img-top" src="assets/images/honest-beauty-mascara.jpg" alt="..."></a>
                        </c:if>
                        <c:if test="${not param.estad}">
                            <a href="ServletInfoProducto?producto=${producto.name}"><img class="card-img-top" src="assets/images/honest-beauty-mascara.jpg" alt="..."></a>
                        </c:if>

                    </div>

                    <!-- Body -->
                    <div class="card-body font-weight-bold text-center">
                        <a class="text-body" href="#"><c:out value="${producto.name}"></c:out></a>
                        <c:if test="${producto.offer != 0}">
                            <div class="text-muted"><del><c:out value="${producto.price}"></c:out>  € </del><c:out value="${producto.nuevoPrecio}"></c:out> €</div>
                        </c:if>
                        <c:if test="${producto.offer == 0}">
                            <div class="text-muted"><c:out value="${producto.price}"></c:out>  €</div>
                        </c:if>
                    </div>

                </div>

            </div>
        </c:forEach>

    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
