
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/styleMainPage.css">
    <title>Kosmetics</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light order-bottom shadow-sm">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand d-none d-lg-block" href="mainPage.jsp">
            <ul class="list-inline d-flex align-baseline">
                <li class="list-inline-item mx-0 px-0">
                    <img id="logo" src="assets/images/LogoBueno.svg" height="32px">
                </li>
                <li class="list-inline-item mx-0 pb-0 align-self-baseline">
                    <h5 class="font-weight-bold mb-0 align-self-baseline">osmetics</h5>
                </li>
            </ul>
        </a>
        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item d-lg-none">
                <a class="p-2 text-dark nav-link" href="profile.jsp">Perfil</a>
            </li>
            <li class="nav-item active">
                <a class="p-2 text-dark nav-link" href="addProduct.jsp">Añadir producto</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-outline-info m-2 my-lg-1 py-1" href="cargarProductos.jsp">Publicar</a>
            </li>
            <li class="nav-item mx-2 d-none d-lg-block">
                <div class="vl" style="height: 40px; width: 2px; background-color: gainsboro"></div>
            </li>
            <li class="nav-item d-none d-lg-block">
                <a href="profile.jsp"><img height="32px" id="logoEmpresa" src="assets/images/pruebaLogoEmpresa.png"></a>
            </li>
        </ul>
    </div>
</nav>
</body>
</html>
