<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 05/04/2020
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="es-es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Iniciar sesión · Kosmetics</title>
</head>
<body>
<div class="container-fluid">
    <div class="row p-0 justify-content-center">
        <img src = "assets/images/Tatiana-1.JPG" class="img-fluid col-lg-6 p-0 d-none d-xl-block">
        <div class="col-12 col-xl-6 py-5 d-flex justify-content-center">
            <div class = "col-lg-8">
                <h1 class="text-center pt-5">Login</h1>
                <h4 class="text-center text-muted py-3">¡Descubre lo que opinan tus clientes!</h4>
                <form onsubmit="return validate()" action="servletLogin" method="post" class="needs-validation" novalidate>
                    <div class="form-group">
                        <label for="inputEmail">Nombre de usuario / correo electrónico</label>
                        <c:if test="${not empty invalidLogin}">
                            <input type="text" class="form-control is-invalid" id="inputEmail" name="inputEmail" aria-describedby="emailHelp">
                        </c:if>
                        <c:if test="${empty invalidLogin}">
                            <input type="text" class="form-control" id="inputPassword" name="inputEmail">
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">Contraseña</label>
                        <c:if test="${not empty invalidLogin}">
                            <input type="password" class="form-control is-invalid" id="inputPassword" name="inputPassword">
                        </c:if>
                        <c:if test="${empty invalidLogin}">
                            <input type="password" class="form-control" id="inputPassword" name="inputPassword">
                        </c:if>
                        <div class="invalid-feedback">
                            El nombre de usuario o la contraseña son erróneos.
                        </div>
                    </div>

                    <button type="submit" class="btn btn-dark btn-block mt-5">Iniciar sesión</button>
                    <small class="form-text text-muted mt-3">¿Aun no tienes cuenta? <a class="p-2 text-dark" href="#">¡Regístrate!</a></small>

                </form>
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