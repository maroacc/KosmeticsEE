<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 31/03/2020
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es-es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Crear cuenta · Kosmetics</title>
</head>
<body>
<div class="container-fluid">
    <div class="row p-0 justify-content-center">
        <img src = "assets/images/Tatiana-2.JPG" class="img-fluid col-lg-6 p-0 d-none d-xl-block">
        <div class="col-12 col-xl-6 py-5 d-flex justify-content-center">
            <div class = "col-lg-8">
                <h1 class="text-center pt-5">Crea tu cuenta</h1>
                <h4 class="text-center text-muted py-3">¡Descubre lo que opinan tus clientes!</h4>
                <form onsubmit="return validate()" class="needs-validation" novalidate>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Correo electrónico</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                        <div class="invalid-feedback">
                            Campo obligatorio
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Nombre de usuario</label>
                        <input type="text" class="form-control" id="exampleInputUsername" aria-describedby="emailHelp" required>
                        <div class="invalid-feedback">
                            Campo obligatorio
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1">Contraseña</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" required>
                        <div class="invalid-feedback">
                            Campo obligatorio
                        </div>
                    </div>


                    <button type="submit" class="btn btn-dark btn-block mt-5">Crear cuenta</button>
                    <small class="form-text text-muted mt-3">¿Ya tienes cuenta? <a class="p-2 text-dark" href="#">¡Inicia sesión!</a></small>

                </form>
            </div>

        </div>

    </div>

</div>
<script type="text/javascript" src="js/validation.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
