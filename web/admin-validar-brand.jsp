<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 19/04/2020
  Time: 10:06
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

    <title>Validar · Kosmetics</title>
</head>
<body>
<jsp:include page="navAdmin.jsp"/>

<div class="pricing-header px-3 py pt-4 pb-4 mx-auto text-center">
    <h1 class="display-4">Validar nueva marca</h1>
</div>
<form onsubmit="return validate()" class="needs-validation" novalidate>
    <div class="row d-flex justify-content-center">

        <div class="col-10 col-lg-8 col-xl-6" novalidate>
            <h3 class="mb-4">Información General</h3>
            <div class="form-group">
                <label for="inputNombreMarca">Nombre de la marca</label>
                <input type="text" class="form-control-plaintext" id="inputNombreMarca" aria-describedby="nombreMarcaHelpBlock" placeholder="${brand.name}" readonly>
            </div>

            <div class="my-3">
                <label >Descripción de la marca</label>
                <p class="text-muted"><c:out value="${brand.description}"></c:out></p>
            </div>

        </div>
    </div>

    <div class="row d-flex justify-content-center">
        <div class = "col-10 col-lg-8 col-xl-6">
            <h3 class="py-3">Información de la empresa</h3>
            <div class="form-group row">
                <label for="inputEmail3" class="col-lg-2 col-form-label">Nombre de la empresa</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control-plaintext" id="inputEmail3" aria-describedby="nombreEmpresaHelpBlock" placeholder="${brand.company.name}" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword3" class="col-lg-2 col-form-label info"><u >CIF</u></label>
                <div class="col-sm-10">
                    <input type="password" class="form-control-plaintext" id="inputPassword3" placeholder="${brand.company.CIF}" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-lg-2 col-form-label">Dirección</label>
                <div class="col-10 mb-3">
                    <label for="inputDireccionEmpresa1" class="sr-only">Linea 1 de direccion</label>
                    <input type="email" class="form-control-plaintext" id="inputDireccionEmpresa1" placeholder="${brand.company.fiscalAddress}" readonly>
                </div>
            </div>
        </div>
    </div>

    <div class="row d-flex justify-content-center pb-3">
        <div class = "col-10 col-lg-8 col-xl-6">
            <h3 class="py-3">Contacto de la empresa</h3>
            <div class="form-group row">
                <label for="inputEmailContacto" class="col-sm-3 col-form-label">Email de contacto</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control-plaintext" id="inputEmailContacto" placeholder="${brand.contact.email}" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputNombreContacto" class="col-sm-3 col-form-label info">Nombre: </label>
                <div class="col">
                    <input type="text" id="inputNombreContacto" class="form-control-plaintext" placeholder="${brand.contact.name}" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputTelefono" class="col-sm-3 col-form-label">Teléfono</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control-plaintext" id="inputTelefono" placeholder="${brand.contact.telephone}">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Dirección</label>
                <div class="col-9">
                    <label for="inputDireccionContacto1" class="sr-only">Línea 1 de dirección</label>
                    <input type="email" class="form-control-plaintext" id="inputDireccionContacto1" placeholder="${brand.contact.address}">
                </div>
            </div>
            <div class="form-row mb-5">
                <div class="col-lg-6">
                    <a class="btn btn-outline-success btn-lg btn-block mt-5" href="admin-main-page.jsp?validate=true">Validar el perfil</a>

                </div>
                <div class="col-lg-6">
                    <a class="btn btn-outline-danger btn-lg btn-block mt-5" href="admin-main-page.jsp?validate=false" >Invalidar el perfil</a>
                </div>
            </div>



        </div>
    </div>
</form>

<script type="text/javascript" src="js/validation.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>