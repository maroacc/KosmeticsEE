<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 28/04/2020
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en" xmlns:html="http://java.sun.com/JSP/Page">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>Consigue Kosmetics!</title>
</head>
<body id="body-info">
<jsp:include page="navLogin.jsp"/>
<div class=" d-flex flex-md-row align-items-center p-3 px-md-4 mb-0 bg-white border-bottom shadow-sm">
    <img id="logo" src="assets/images/LogoBueno.svg" alt="logo">
    <h5 class="my-0 mr-md-auto font-weight-bold">osmetics</h5>
    <form class="form-inline my-2 my-lg-0 mr-md-auto d-none d-lg-block">
        <input class="form-control mr-sm-2 d-none d-lg" type="search" placeholder="Search" aria-label="Search">
    </form>
    <nav class="my-2 my-md-0 mr-md-3 ml-auto">
        <a class="p-2 text-dark" href="#">Iniciar sesión</a>
    </nav>
    <a class="btn btn-outline-info" href="#">Unirse</a>
</div>
<div class="container-fluid mx-0 p-0">
    <div class="d-flex flex-row justify-content-center pt-4 pb-5 background-white">
        <img id="logo-grande" src="assets/images/LogoBueno.svg" alt="logo">
        <h1 class="my-0 font-weight-bold" id="brand-sm">osmetics</h1>
    </div>
    <div class="row mb-5 px-3 px-lg-5 pt-3">
        <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-3 mb-lg-5 col-12">
            <h2 class="title">Da a conocer tu marca</h2>
            <p class="lead">Aporta información real y personalizada a tus clientes.</p>
        </div>
        <div class="col-12 col-lg-4 mt-lg-3 d-none d-lg-block">
            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit sem vivamus habitant, sociis nam semper ultricies potenti faucibus pulvinar congue curabitur, fusce nullam malesuada class blandit pharetra morbi posuere mollis. Nascetur ultrices sociis lacinia sapien class, netus odio eget leo, urna porttitor nisl convallis. Fames sapien imperdiet nullam sollicitudin pharetra nascetur platea, nostra turpis odio curae quis dui, aptent lacinia tincidunt eget ante sagittis.
            </p>
        </div>
        <div class="col-12 col-lg-8">
            <img src="assets/images/Main%20page.png" class="img-fluid shadow-sm" alt="foto pagina principal">
        </div>
        <div class="col-12 col-lg-4 mt-4 mt-lg-5 d-lg-none">
            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit sem vivamus habitant, sociis nam semper ultricies potenti faucibus pulvinar congue curabitur, fusce nullam malesuada class blandit pharetra morbi posuere mollis. Nascetur ultrices sociis lacinia sapien class, netus odio eget leo, urna porttitor nisl convallis. Fames sapien imperdiet nullam sollicitudin pharetra nascetur platea, nostra turpis odio curae quis dui, aptent lacinia tincidunt eget ante sagittis.
            </p>
        </div>

    </div>
    <div class="row background-white pb-5 px-3 px-lg-5 pt-3 ">
        <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-3 mb-lg-5 mt-5 col-12">
            <h2 class="title">Escucha a tus clientes</h2>
            <p class="lead">Recibe opiniones reales sonre tus productos.</p>
        </div>
        <div class="col-12 col-lg-4 mt-lg-3 d-none d-lg-block">
            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit sem vivamus habitant, sociis nam semper ultricies potenti faucibus pulvinar congue curabitur, fusce nullam malesuada class blandit pharetra morbi posuere mollis. Nascetur ultrices sociis lacinia sapien class, netus odio eget leo, urna porttitor nisl convallis. Fames sapien imperdiet nullam sollicitudin pharetra nascetur platea, nostra turpis odio curae quis dui, aptent lacinia tincidunt eget ante sagittis.
            </p>
        </div>
        <div class="col-12 col-lg-8">
            <img src="assets/images/Perfil%20reviews.png" class="img-fluid shadow-sm" alt="foto reviews">
        </div>
        <div class="col-12 col-lg-4 mt-4 mt-lg-5 d-lg-none">
            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit sem vivamus habitant, sociis nam semper ultricies potenti faucibus pulvinar congue curabitur, fusce nullam malesuada class blandit pharetra morbi posuere mollis. Nascetur ultrices sociis lacinia sapien class, netus odio eget leo, urna porttitor nisl convallis. Fames sapien imperdiet nullam sollicitudin pharetra nascetur platea, nostra turpis odio curae quis dui, aptent lacinia tincidunt eget ante sagittis.
            </p>
        </div>

    </div>
    <div class="row pb-5 px-3 px-lg-5 pt-3">
        <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-3 mb-lg-5 mt-5 col-12">
            <h2 class="title">Analiza tu mercado</h2>
            <p class="lead">Obten análisis basados en tus clientes y competidoes.</p>
        </div>
        <div class="col-12 col-lg-4 mt-lg-3 d-none d-lg-block">
            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit sem vivamus habitant, sociis nam semper ultricies potenti faucibus pulvinar congue curabitur, fusce nullam malesuada class blandit pharetra morbi posuere mollis. Nascetur ultrices sociis lacinia sapien class, netus odio eget leo, urna porttitor nisl convallis. Fames sapien imperdiet nullam sollicitudin pharetra nascetur platea, nostra turpis odio curae quis dui, aptent lacinia tincidunt eget ante sagittis.
            </p>
        </div>
        <div class="col-12 col-lg-8">
            <img src="assets/images/Estadisticas%20por%20categoría.png" class="img-fluid shadow-sm" alt="foto opiniones">
        </div>
        <div class="col-12 col-lg-4 mt-4 mt-lg-5 d-lg-none">
            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit sem vivamus habitant, sociis nam semper ultricies potenti faucibus pulvinar congue curabitur, fusce nullam malesuada class blandit pharetra morbi posuere mollis. Nascetur ultrices sociis lacinia sapien class, netus odio eget leo, urna porttitor nisl convallis. Fames sapien imperdiet nullam sollicitudin pharetra nascetur platea, nostra turpis odio curae quis dui, aptent lacinia tincidunt eget ante sagittis.
            </p>
        </div>

    </div>
    <div class="container-fluid space-top-2 space-top-lg-3 background-white pb-5 pt-3 px-3 px-lg-5">
        <!-- Title -->
        <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-3 mb-lg-5 mt-5 col-12">
            <h2 class="title">Elige tu plan</h2>
            <p class="lead">Tenemos 3 planes disponibles para adaptarnos a tus necesidades.</p>
        </div>
        <!-- End Title -->

        <div class="w-xl-80 mx-xl-auto px-lg-5">
            <!-- Pricing -->
            <div class="card p-4 mb-3 mb-md-1 aos-init aos-animate" data-aos="fade-up">
                <div class="row align-items-sm-center">
                    <div class="col">
                        <div class="media align-items-center">
                            <div class="min-w-8rem mr-2">
                                <figure class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="32" height="32" viewBox="0 0 160 160">
                                        <circle fill="#FF98D5" opacity=".85" cx="80" cy="80" r="48"></circle>
                                    </svg>
                                </figure>
                            </div>
                            <div class="media-body">
                                <h4 class="mb-0">Free</h4>
                                <small class="d-block">Subida de productos</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 col-md-5">
                        <span class="font-size-1">Ideal si la empresa está comenzando</span>
                    </div>
                    <div class="col-12 col-md col-lg-4 col-xl-3 text-lg-right mt-3 mt-lg-0">
                        <a class="btn btn-block btn-outline-info border transition-3d-hover" href="registrarse.jsp?plan=1" target="_blank">0€</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing -->

            <!-- Pricing -->
            <div class="card p-4 mb-3 mb-md-1 aos-init aos-animate" data-aos="fade-up" data-aos-delay="150">
                <div class="row align-items-sm-center">
                    <div class="col">
                        <div class="media align-items-center">
                            <div class="min-w-8rem mr-2">
                                <figure class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="32" height="32" viewBox="0 0 160 160">
                                        <circle fill="#FF98D5" opacity=".85" cx="48" cy="53" r="48"></circle>
                                        <circle fill="#FF98D5" opacity=".85" cx="112" cy="53" r="48"></circle>
                                        <circle fill="#FF98D5" opacity=".85" cx="81" cy="107" r="48"></circle>
                                    </svg>
                                </figure>
                            </div>
                            <div class="media-body">
                                <h4 class="mb-0">Pro</h4>
                                <small class="d-block">Análisis de mercado</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 col-md-5">
                        <span class="font-size-1">Plan Free + análisis exlusivos</span>
                    </div>
                    <div class="col-12 col-md col-lg-4 col-xl-3 text-lg-right mt-3 mt-lg-0">
                        <a class="btn btn-block btn-outline-info border transition-3d-hover" href="registrarse.jsp?plan=2" target="_blank">15€</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing -->

            <!-- Pricing -->
            <div class="card p-4 mb-3 mb-md-1 aos-init aos-animate" data-aos="fade-up" data-aos-delay="150">
                <div class="row align-items-sm-center">
                    <div class="col">
                        <div class="media align-items-center">
                            <div class="min-w-8rem mr-2">
                                <figure class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="32" height="32" viewBox="0 0 160 160">
                                        <circle fill="#FF98D5" opacity=".85" cx="48" cy="53" r="48"></circle>
                                        <circle fill="#FF98D5" opacity=".85" cx="112" cy="53" r="48"></circle>
                                        <circle fill="#FF98D5" opacity=".85" cx="81" cy="107" r="48"></circle>
                                    </svg>
                                </figure>
                            </div>
                            <div class="media-body">
                                <h4 class="mb-0">Extended</h4>
                                <small class="d-block">Análisis de la competencia</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 col-md-5">
                        <span class="font-size-1">Perfecto para empresas consolidadas con cuota de mercado</span>
                    </div>
                    <div class="col-12 col-md col-lg-4 col-xl-3 text-lg-right mt-3 mt-lg-0">
                        <a class="btn btn-block btn-outline-info border transition-3d-hover" href="registrarse.jsp?plan=3" target="_blank">29€</a>
                    </div>
                </div>
            </div>

            <!-- End Pricing -->
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