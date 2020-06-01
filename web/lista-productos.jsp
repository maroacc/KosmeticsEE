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
<html lang="en" xmlns:html="http://java.sun.com/JSP/Page">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:300,400,600,700&amp;lang=en" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="startbootstrap-sb-admin-2-gh-pages/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- SB2-Admin-->
    <link href="startbootstrap-sb-admin-2-gh-pages/css/sb-admin-2.min.css" rel="stylesheet">

    <title>Hello, world!</title>
</head>
<link rel="stylesheet" type="text/css" href="css/style.css">

<body class="bg-light">
<jsp:include page="nav.jsp"/>

<c:if test="${empty listaProductos}">
    <div class="d-flex justify-content-center row mt-5">
        <h5 class="col-12 text-center mb-3" style="color:#888888; font-family:Montserrat" >Parece que aún no hay productos...</h5>
        <img src="assets/icons/nature.svg" height="128" width="128">
    </div>
</c:if>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <h1 class="h3 mt-4 mb-2 text-gray-800">Catálogo</h1>
    <p class="mb-4">El catálogo te permite ver los productos publicados en tu página de Kosmetics</a>.</p>

    <div class="row">
    <c:forEach var="producto" items="${listaProductos}">
        <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card h-100 shadow">
                <a href="ServletInfoProducto?producto=${producto.name}"><img class="card-img-top" src="ReadImg?id=${producto.id}" alt="..."></a>

                <div class="card-body">
                    <h4 class="card-title">
                        <a class="text-body" href="ServletInfoProducto?producto=${producto.name}"><c:out value="${producto.name}"></c:out></a>
                    </h4>
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
    <!-- /.row -->

<%--    <!-- Pagination -->
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>--%>

</div>
<!-- /.container -->

<!-- Custom scripts for all pages-->
<script src="startbootstrap-sb-admin-2-gh-pages/js/sb-admin-2.min.js"></script>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
