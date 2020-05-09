<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 31/03/2020
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!--  meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Editar Perfil · Kosmetics</title>
</head>
<body>

<div class="pricing-header px-3 py pt-4 pb-4 mx-auto text-center">
    <h1 class="display-4">Editar Perfil</h1>
</div>
<form onsubmit="return validate()" class="needs-validation" method="post" action="servletActualizarPerfil" novalidate>
    <div class="row d-flex justify-content-center">

        <div class="col-10 col-lg-8 col-xl-6">
            <h3 class="mb-4">Información General</h3>
            <div class="form-group">
                <label for="inputNombreMarca">Nombre de la marca*</label>
                <% if(request.getSession().getAttribute("brandUnique")!=null){
                    if(!(boolean) request.getSession().getAttribute("brandUnique")){
                %>
                <input type="text" class="form-control is-invalid" value="${brand.name}" id="inputNombreMarca" name="inputNombreMarca" aria-describedby="nombreMarcaHelpBlock" required>
                <small id="nombreMarcaHelpBlock" class="form-text text-muted col-12 px-0 is-invalid">
                    Especifique el nombre tal y como quiere que lo vean los clientes
                </small>
                <div class="invalid-feedback">
                    Ya existe una marca registrada con el nombre especificado
                </div>
                <%} else { %>
                <input type="text" class="form-control" id="inputNombreMarca" value="${brand.name}" name="inputNombreMarca" aria-describedby="nombreMarcaHelpBlock" required>
                <small id="nombreMarcaHelpBlock" class="form-text text-muted col-12 px-0">
                    Especifique el nombre tal y como quiere que lo vean los clientes
                </small>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
                <% }} else{
                %>
                <input type="text" class="form-control" id="inputNombreMarca" name="inputNombreMarca" value="${brand.name}" aria-describedby="nombreMarcaHelpBlock" required>
                <small id="nombreMarcaHelpBlock" class="form-text text-muted col-12 px-0">
                    Especifique el nombre tal y como quiere que lo vean los clientes
                </small>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
                <%}
                %>
            </div>

            <div class="my-3">
                <label for="descripcionTextarea">Descripción de la marca</label>
                <textarea class="form-control" id="descripcionTextarea" name="descripcionTextarea" aria-describedby="descriptionHelpBlock" required><c:out value="${brand.description}"></c:out></textarea>
                <small id="descriptionHelpBlock" class="form-text text-muted ml-0">
                    La descripción debe contener al menos 100 caracteres y un máximo de 300
                </small>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>

            <div class="custom-file mb-5 col-12">
                <input type="file" class="custom-file-input" name="inputLogo" id="inputLogo" aria-describedby="imageHelpBlock">
                <label class="custom-file-label" for="inputLogo">Logo de la marca</label>
            </div>

            <div class="form-group">
                <label for="inputWebAddress">Dirección web</label>
                <input type="url" class="form-control" id="inputWebAddress" name="inputWebAddress" value="${brand.webAddress}" maxlength="45" aria-describedby="webAddressHelpBlock" >
                <small id="webAddressHelpBlock" class="form-text text-muted col-12 px-0">
                    Url del la página web
                </small>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>

        </div>
    </div>

    <div class="row d-flex justify-content-center">
        <div class = "col-10 col-lg-8 col-xl-6">
            <h3 class="py-3">Información de la empresa</h3>
            <div class="form-group row">
                <label for="inputNombreEmpresa" class="col-lg-2 col-form-label">Nombre de la empresa*</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputNombreEmpresa" value="${brand.company.name}" name = "inputNombreEmpresa" maxlength="45" aria-describedby="nombreEmpresaHelpBlock" placeholder="Nombre en el Registro Mercantil" required>
                    <div class="invalid-feedback">
                        Este campo es obligatorio
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputCIF" class="col-lg-2 col-form-label info"><u >CIF*</u></label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputCIF" minlength="9" maxlength="9" value="${brand.company.CIF}" name="inputCIF" required>
                </div>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>
        </div>
    </div>

    <div class="row d-flex justify-content-center pb-3">
        <div class = "col-10 col-lg-8 col-xl-6">
            <h3 class="py-3">Contacto de la empresa</h3>
            <div class="form-group row">
                <label for="inputEmailContacto" class="col-sm-3 col-form-label">Email de contacto*</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputEmailContacto" value="${brand.contact.email}" name="inputEmailContacto" placeholder="email@example.com" maxlength="45" required>
                </div>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>
            <div class="form-group row">
                <label for="inputNombreContacto" class="col-sm-3 col-form-label info">Nombre*: </label>
                <div class="col">
                    <input type="text" id="inputNombreContacto" value="${brand.contact.name}" name="inputNombreContacto" class="form-control" maxlength="15" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputTelefono" class="col-sm-3 col-form-label">Teléfono</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTelefono" value="${brand.contact.telephone}" name="inputTelefono" maxlength="13">
                </div>
            </div>
        </div>
    </div>

    <div class="row d-flex justify-content-center pb-5">
        <div  class = "col-10 col-lg-8 col-xl-6 pb-3">
            <h3 class="py-3">Pago</h3>

            <div class="form-group">
                <label for="inputTipoPago">Tipo de pago</label>
                <select class="form-control" id="inputTipoPago" name="inputTipoPago">
                    <option>Pago mensual</option>
                    <option>Pago anual</option>
                </select>

            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="checkboxPagoAutomatico" name="checkboxPagoAutomatico">
                <label class="form-check-label" for="checkboxPagoAutomatico">Activar el pago automático de la subscripción</label>
            </div>

            <button class="btn btn-info btn-lg btn-block mt-5" type="submit">Actualizar el perfil</button>

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
