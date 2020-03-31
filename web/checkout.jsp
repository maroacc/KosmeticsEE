<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 31/03/2020
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Checkout · Kosmetics</title>
</head>
<body>
<div id="body-landing-page" class="pb-0">
    <div class="d-flex flex-md-row align-items-center p-3 px-md-4 mb-0 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Kosmetics</h5>
        <div class="form-inline my-2 my-lg-0 mr-md-auto d-none d-lg-block">
            <input class="form-control mr-sm-2 d-none d-lg" type="search" placeholder="Search" aria-label="Search">
        </div>
        <nav class="my-2 my-md-0 mr-md-3 ml-auto">
            <a class="p-2 text-dark" href="#">Iniciar sesión</a>
        </nav>
        <a class="btn btn-outline-primary" href="#">Unirse</a>
    </div>
</div>

<div class="pricing-header px-3 py pt-4 pb-4 mx-auto text-center">
    <h1 class="display-4">Checkout</h1>
</div>
<form onsubmit="return validate()" class="needs-validation" novalidate>
    <div class="row d-flex justify-content-center">

        <div class="col-10 col-lg-8 col-xl-6" novalidate>
            <h3 class="mb-4">Información General</h3>
            <div class="form-group">
                <label for="inputNombreMarca">Nombre de la marca*</label>
                <input type="text" class="form-control" id="inputNombreMarca" aria-describedby="nombreMarcaHelpBlock" required>
                <small id="nombreMarcaHelpBlock" class="form-text text-muted col-12 px-0">
                    Especifique el nombre tal y como quiere que lo vean los clientes
                </small>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>

            <div class="my-3">
                <label for="descripcionTextarea">Descripción de la marca</label>
                <textarea class="form-control" id="descripcionTextarea" name="descripcionTextarea" placeholder="Cuente a sus clientes los valores y los objetivos de su marca" aria-describedby="descriptionHelpBlock" required></textarea>
                <small id="descriptionHelpBlock" class="form-text text-muted ml-0">
                    La descripción debe contener al menos 100 caracteres y un máximo de 300
                </small>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>

            <div class="custom-file mb-5 col-12">
                <input type="file" class="custom-file-input" id="customFile" aria-describedby="imageHelpBlock">
                <label class="custom-file-label" for="customFile">Logo de la marca</label>
            </div>

        </div>
    </div>

    <div class="row d-flex justify-content-center">
        <div class = "col-10 col-lg-8 col-xl-6">
            <h3 class="py-3">Información de la empresa</h3>
            <div class="form-group row">
                <label for="inputNombreEmpresa" class="col-lg-2 col-form-label">Nombre de la empresa*</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputNombreEmpresa" name = "inputNombreEmpresa" aria-describedby="nombreEmpresaHelpBlock" placeholder="Nombre en el Registro Mercantil" required>
                    <div class="invalid-feedback">
                        Este campo es obligatorio
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword3" class="col-lg-2 col-form-label info"><u >CIF*</u></label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPassword3" required>
                </div>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-lg-2 col-form-label">Dirección</label>
                <div class="col-10 mb-3">
                    <label for="inputDireccionEmpresa1" class="sr-only">Linea 1 de direccion</label>
                    <input type="email" class="form-control" id="inputDireccionEmpresa1" placeholder="Línea 1 de dirección">
                </div>
                <div class="col-12">
                    <label for="inputDireccionEmpresa2" class="sr-only">Linea 2 de direccion</label>
                    <input type="email" class="form-control" id="inputDireccionEmpresa2" placeholder="Línea 2 de dirección">
                </div>
            </div>
            <div class="form-row">
                <div class="col-12 col-lg-7 mb-3">
                    <label for="inputMunicipio" class="sr-only">Municipio</label>
                    <input type="text" class="form-control" id="inputMunicipio" placeholder="Municipio">
                </div>
                <div class="col-6 col-lg">
                    <label for="inputProvincia" class="sr-only">Provincia</label>
                    <input type="text" class="form-control" id="inputProvincia" placeholder="Provincia">
                </div>
                <div class="col-6 col-lg">
                    <label for="inputCodigopostal" class="sr-only">Código Postal</label>
                    <input type="text" class="form-control" id="inputCodigopostal" placeholder="Código Postal">
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
                    <input type="text" class="form-control" id="inputEmailContacto" placeholder="email@example.com" required>
                </div>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>
            <div class="form-group row">
                <label for="inputNombreContacto" class="col-sm-3 col-form-label info">Nombre*: </label>
                <div class="col">
                    <input type="text" id="inputNombreContacto" class="form-control" placeholder="Nombre" required>
                </div>
                <label for="inputApellidosContacto" class="col-sm-3 col-form-label info sr-only">Nombre: </label>
                <div class="col">
                    <input type="text" class="form-control" id="inputApellidosContacto" placeholder="Apellidos" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputTelefono" class="col-sm-3 col-form-label">Teléfono</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" id="inputTelefono">
                </div>
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Utilizar la dirección de la empresa como dirección de contacto</label>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Dirección</label>
                <div class="col-9 mb-3">
                    <label for="inputDireccionContacto1" class="sr-only">Línea 1 de dirección</label>
                    <input type="email" class="form-control" id="inputDireccionContacto1" placeholder="Línea 1 de dirección">
                </div>
                <div class="col-12">
                    <label for="inputDireccionContacto2" class="sr-only">Línea 1 de dirección</label>
                    <input type="email" class="form-control" id="inputDireccionContacto2" placeholder="Línea 2 de dirección">
                </div>
            </div>
            <div class="form-row">
                <div class="col-12 col-lg-7 mb-3">
                    <label for="inputMunicipioContacto" class="sr-only">Municipio: </label>
                    <input type="text" class="form-control" id="inputMunicipioContacto" placeholder="Municipio">
                </div>
                <div class="col-6 col-lg">
                    <label for="inputProvinciaContacto" class="sr-only">Provincia: </label>
                    <input type="text" class="form-control" placeholder="Provincia" id="inputProvinciaContacto">
                </div>
                <div class="col-6 col-lg">
                    <label for="inputCodigoPostalContacto" class="sr-only">Código Postal: </label>
                    <input type="text" class="form-control" placeholder="Código Postal" id="inputCodigoPostalContacto">
                </div>
            </div>

        </div>
    </div>

    <div class="row d-flex justify-content-center pb-5">
        <div  class = "col-10 col-lg-8 col-xl-6 pb-3">
            <h3 class="py-3">Pago</h3>

            <div class="form-group">
                <label for="exampleInputTipoDePago">Tipo de pago</label>
                <select class="form-control" id="exampleInputTipoDePago">
                    <option>Pago mensual</option>
                    <option>Pago anual</option>
                </select>

            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="checkboxPagoAutomatico">
                <label class="form-check-label" for="checkboxPagoAutomatico">Activar el pago automático de la subscripción</label>
            </div>
            <ul class="form-group pl-0">
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Product name</h6>
                        <small class="text-muted">Brief description</small>
                    </div>
                    <span class="text-muted">$12</span>
                </li>

            </ul>
            <div class="d-block my-3">
                <div class="custom-control custom-radio">
                    <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                    <label class="custom-control-label" for="credit">Tarjeta de crédito</label>
                </div>
                <div class="custom-control custom-radio">
                    <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                    <label class="custom-control-label" for="debit">Tarjeta de débito</label>
                </div>
                <div class="custom-control custom-radio">
                    <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                    <label class="custom-control-label" for="paypal">PayPal</label>
                </div>
            </div>
            <div class="mb-3">
                <label for="cc-name">Nombre del propietario de la tarjeta*</label>
                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                <small class="text-muted">Nombre completo tal y como se muestra en la tarjeta</small>
                <div class="invalid-feedback">
                    Especifique el titular de la tarjeta
                </div>
            </div>
            <div class="mb-3">
                <label for="cc-number">Credit card number*</label>
                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                    Especifique el número de la tarjeta
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 mb-3">
                    <label for="cc-expiration">Expiration*</label>
                    <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                    <div class="invalid-feedback">
                        Especifique la fecha de caducidad
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="cc-cvv">CVV*</label>
                    <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                    <div class="invalid-feedback">
                        Especifique el código de seguridad
                    </div>
                </div>
            </div>

            <button class="btn btn-primary btn-lg btn-block mt-5" type="submit">Finalizar la compra</button>

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
