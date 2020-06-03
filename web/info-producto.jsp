<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 28/04/2020
  Time: 19:18
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
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>Hello, world!</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container pt-3">

    <div class="row">
        <div class="col-lg-4">
            <div id="carouselExampleIndicators" class="carousel slide pt-lg-3" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="ReadImg?id=${producto.id}" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="ReadImg?id=${producto.id}" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="ReadImg?id=${producto.id}" class="d-block w-100" alt="...">
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
            <c:if test="${param.a}">
                <div class="d-block">
                    <div class="d-flex justify-content-between my-3">
                        <div class="p-1"><a class="btn btn-outline-success btn-lg btn-block"
                                            href="admin-main-page.jsp?validate=true">Validar el producto</a></div>
                        <div class="p-1"><a class="btn btn-outline-danger btn-lg btn-block"
                                            href="admin-main-page.jsp?validate=false">Invalidar el producto</a></div>

                    </div>
                </div>
            </c:if>

        </div>
        <div class="col d-md-block">
            <div class="p-3 pt-lg-3">
                <div class="d-flex my-3 justify-content-between">
                    <h1><c:out value="${producto.name}"></c:out></h1>
                    <form action="editar-producto" method="post">
                        <button type="submit" class="btn btn-outline-dark my-1 d-none d-lg-inline ml-3">Editar</button>
                        <button type="submit" class="btn btn-outline-dark my-1 d-lg-none">Editar</button>
                    </form>
                </div>
                <ul class="list-inline mb-0 float-right">
                    <c:forEach var = "i" begin = "1" end = "${producto.score}">
                        <li class="list-inline-item" style="margin-right: 0px"><svg class="bi bi-star-fill" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="#17a2b8" xmlns="http://www.w3.org/2000/svg"><path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/></svg></li>
                    </c:forEach>
                    <c:forEach var = "i" begin = "1" end = "${producto.resto}">
                        <li class="list-inline-item" style="margin-right: 0px"><svg class="bi bi-star" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="#17a2b8" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.523-3.356c.329-.314.158-.888-.283-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767l-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288l1.847-3.658 1.846 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.564.564 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"></path></svg></li>
                    </c:forEach>
                </ul>
                <div class="d-inline-flex">
                    <ul class="list-inline my-1">
                        <c:if test="${producto.offer != 0}">
                            <li class="list-inline-item text-danger h4"><del><c:out value="${producto.price}"></c:out> €</del></li>
                            <li class="list-inline-item"><c:out value="${producto.nuevoPrecio}"></c:out> €</li>
                        </c:if>
                        <c:if test="${producto.offer == 0}">
                            <li class="list-inline-item text-danger h4"><c:out value="${producto.price}"></c:out> €</li>
                            </c:if>
                    </ul>

                </div>
                <p><c:out value="${producto.description}"></c:out></p>

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
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>