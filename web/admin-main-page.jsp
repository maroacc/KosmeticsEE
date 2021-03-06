<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 18/04/2020
  Time: 21:30
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

    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>Admin · Kosmetics</title>
</head>
<body class="bg-light">
<jsp:include page="navAdmin.jsp"/>
<div class="container">
    <c:if test="${(not empty param.validate) && (param.validate)}">
        <div class="alert alert-success alert-dismissible fade show my-3 mx-3" role="alert">
            La validación se ha llevado a cabo con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>

    <c:if test="${(not empty param.validate) && (not param.validate)}">
        <div class="alert alert-warning alert-dismissible fade show my-3 mx-3" role="alert">
            La invalidación se ha llevado a cabo con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>
    <div class="my-3 p-3 bg-white rounded shadow-sm m-lg-5">
        <h6 class="border-bottom border-gray pb-2 mb-0">Marcas añadidas recientemente</h6>
        <c:forEach var="brand" items="${latestBrands}">
            <div class="media text-muted pt-3">
            <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#84DCC6"></rect></svg>
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                <div class="d-flex justify-content-between align-items-center w-100">
                    <strong class="text-gray-dark"><c:out value="${brand.name}"></c:out></strong>
                    <a href="ServletValidarMarca?username=<c:out value="${brand.username}"></c:out>" class="text-info">Ver info</a>
                </div>
                <span class="d-block"><c:out value="${brand.username}"></c:out></span>
            </div>
        </div>
        </c:forEach>
    </div>

    <div class="my-3 p-3 bg-white rounded shadow-sm m-lg-5">
        <h6 class="border-bottom border-gray pb-2 mb-0">Productos añadidos recientemente</h6>
        <c:forEach var="product" items="${latestProducts}">
            <div class="media text-muted pt-3">
                <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#84DCC6"></rect></svg>
                <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                    <div class="d-flex justify-content-between align-items-center w-100">
                        <strong class="text-gray-dark"><c:out value="${product.name}"></c:out></strong>
                        <a href="ServletInfoProducto?producto=<c:out value="${product.name}"></c:out>&a=true" class="text-info">Ver info</a>
                    </div>
                    <span class="d-block"><c:out value="${product.productCategory}"></c:out></span>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="my-3 p-3 bg-white rounded shadow-sm m-lg-5">
        <h6 class="border-bottom border-gray pb-2 mb-0">Últimas compras</h6>
        <c:forEach var="invoice" items="${latestInvoices}">
            <div class="media text-muted pt-3">
                <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#84DCC6"></rect></svg>
                <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                    <div class="d-flex justify-content-between align-items-center w-100">
                        <strong class="text-gray-dark"><c:out value="${invoice.product.name}"></c:out></strong>
                    </div>
                    <span class="d-block"><c:out value="${invoice.date}"></c:out></span>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="my-3 p-3 bg-white rounded shadow-sm m-lg-5">
        <h6 class="border-bottom border-gray pb-2 mb-0">Número de compras</h6>
        <c:forEach var="invoice" items="${countInvoicesPerDate}">
            <div class="media text-muted pt-3">
                <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#84DCC6"></rect></svg>
                <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                    <div class="d-flex justify-content-between align-items-center w-100">
                        <strong class="text-gray-dark"><c:out value="${invoice.key}"></c:out></strong>
                    </div>
                    <span class="d-block"><c:out value="${invoice.value}"></c:out></span>
                </div>
            </div>
        </c:forEach>
    </div>

    <form action="graficas" method="post">
        <button class="btn btn-info btn-lg btn-block mt-5" type="submit">Gráfica</button>
    </form>

</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>