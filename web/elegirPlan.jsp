<%--
  Created by IntelliJ IDEA.
  User: Nico
  Date: 02/05/2020
  Time: 17:53
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

    <title>Elegir Plan · Kosmetics</title>
</head>
<body>
<div id="body-landing-page" class="pb-5">
    <div class="d-flex flex-md-row align-items-center p-3 px-md-4 mb-0 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Kosmetics</h5>
        <form class="form-inline my-2 my-lg-0 mr-md-auto d-none d-lg-block">
            <input class="form-control mr-sm-2 d-none d-lg " type="search" placeholder="Search" aria-label="Search">
        </form>
        <nav class="my-2 my-md-0 mr-md-3 ml-auto">
            <a class="p-2 text-dark" href="#">Iniciar sesión</a>
        </nav>
        <a class="btn btn-outline-primary" href="#">Unirse</a>
    </div>
</div>
<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Planes</h1>
    <p class="lead">Elige el plan que mejor convenga para el futuro de tu empresa</p>
</div>
<div class="container">
    <button type="button" class="btn btn-lg btn-block btn-primary" onclick="muestraPlan('assets/txt/Plan1')">Free</button>
    <button type="button" class="btn btn-lg btn-block btn-primary" onclick="muestraPlan('assets/txt/Plan2')">Pro</button>
    <button type="button" class="btn btn-lg btn-block btn-primary" onclick="muestraPlan('assets/txt/Plan3')">Enterprise</button>
</div>
<br/><br/>
<div class="container">
    <div class="card-deck mb-3 text-center">
        <div class="card mb-4 shadow-sm">
            <div id="ajax">
                <p>Elija un plan.</p>
            </div>
        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<script>
    var XHRObject = false;
    if (window.XMLHttpRequest) {
        XHRObject = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        XHRObject = new ActiveXObject("Microsoft.XMLHTTP");
    }
    function muestraPlan(plan) {
        if (XHRObject) {
            var obj = document.getElementById("ajax");
            XHRObject.open("GET", plan);
            XHRObject.onreadystatechange = function(){
                obj.innerHTML = XHRObject.responseText;
            }
            XHRObject.send();
        }
    }
</script>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
