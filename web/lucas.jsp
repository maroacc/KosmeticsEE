<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 04/04/2020
  Time: 13:05
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

    <title>Hello, world!</title>
</head>
<body>
<h1>Hello, world!</h1>
<form onsubmit="return validate()" class="needs-validation" method="post" action="servletCheckout" novalidate>
    <div class="row d-flex justify-content-center">

        <div class="col-10 col-lg-8 col-xl-6">
            <h3 class="mb-4">Información General</h3>
            <div class="form-group">
                <label for="inputNombreMarca">Nombre de la marca*</label>
                <input type="text" class="form-control" id="inputNombreMarca" name="inputNombreMarca" aria-describedby="nombreMarcaHelpBlock" required>
                <small id="nombreMarcaHelpBlock" class="form-text text-muted col-12 px-0">
                    Especifique el nombre tal y como quiere que lo vean los clientes
                </small>
                <div class="invalid-feedback">
                    Este campo es obligatorio
                </div>
            </div>
            <button class="btn btn-primary btn-lg btn-block mt-5" type="submit">Finalizar la compra</button>

        </div>
    </div>
</form>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>