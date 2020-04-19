<%--
  Created by IntelliJ IDEA.
  User: Nico
  Date: 19/04/2020
  Time: 16:42
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
    <link rel="stylesheet" type="text/css" href="css/styleMainPage.css">
    <title>Kosmetics</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<!--Aquí va la parte del kosmetics para empresas-->
<div class="container">
    <div class="kosmetics">
        <p id="titulillo">Estadísticas por producto</p>
        <h3>Nombre producto</h3>
        <p id="paraEmpresas">Valoración global de la marca:</p>
    </div>
</div>
<br/>
<!--Puntuación-->
<div class="container">
    <section class="main row">
        <div class="col-xs-2 col-md-2 col-lg-2">
            <div id="puntuacion" style="width: 200px;">
                <h2 id="valor">2.5</h2><p>(73 reviews)</p>
            </div>
        </div>
        <div class="col-xs-10 col-md-5 col-lg-5">
            <div>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">5</div>
                </div>
                <br/>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">4</div>
                </div>
                <br/>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">3</div>
                </div>
                <br/>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">2</div>
                </div>
                <br/>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">1</div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-5 col-lg-5">
            <p style="padding-top: 25px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu laoreet elit. Curabitur vel convallis sapien. Cras eu eleifend diam. Praesent vestibulum eleifend vehicula. Suspendisse suscipit nibh at dictum lobortis. Aenean augue urna, egestas ac varius sed, feugiat eget risus.</p>
        </div>
        <div class="col-xs-12 col-md-12 col-lg-12">
            <div id="columnchart_values" style="width: 1000px; height: 500px;"></div>
        </div>
        <div class="col-xs-12 col-md-12 col-lg-12">
            <p>Productos más vendidos:</p>
        </div>
        <div class="col-xs-12 col-md-5 col-lg-3">
            <img src="assets/images/estadGlobales.jpg" style="width: 50%">
        </div>
        <div class="col-xs-12 col-md-5 col-lg-3">
            <img src="assets/images/bases.jpg" style="width: 50%">
        </div>
        <div class="col-xs-12 col-md-5 col-lg-3">
            <img src="assets/images/pintalabios.jpg" style="width: 50%">
        </div>
        <div class="col-xs-12 col-md-12 col-lg-12">
            <div id="valoraciones" style="width: 1000px; height: 500px;"></div>
        </div>
    </section>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart()
    {
        var data = google.visualization.arrayToDataTable([
            ["Month", "Sales"],
            ["1", 15],
            ["2", 6],
            ["3", 8],
            ["4", 10],
            ["5", 18],
            ["6", 20],
            ["7", 22],
            ["8", 6],
            ["9", 7],
            ["10", 9],
            ["11", 11],
            ["12", 14]
        ]);

        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1,
            { calc: "stringify",
                sourceColumn: 1,
                type: "string",
                role: "annotation" },
        ]);

        var options = {
            title: "Ventas en el último año:",
            width: 1000,
            height: 500,
            colors: ['#84DCC6'],
            bar: {groupWidth: "85%"},
            legend: { position: "none" },
        };
        var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
        chart.draw(view, options);

        var data = google.visualization.arrayToDataTable([
            ["Month", "Sales"],
            ["1", 3],
            ["2", 4],
            ["3", 3],
            ["4", 2],
            ["5", 2],
            ["6", 3],
            ["7", 4],
            ["8", 4],
            ["9", 4],
            ["10", 5],
            ["11", 4],
            ["12", 5]
        ]);

        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1,
            { calc: "stringify",
                sourceColumn: 1,
                type: "string",
                role: "annotation" },
        ]);

        var options = {
            title: "Valoración de las características:",
            width: 1000,
            height: 500,
            colors: ['#84DCC6'],
            bar: {groupWidth: "85%"},
            legend: { position: "none" },
        };
        var chart = new google.visualization.ColumnChart(document.getElementById("valoraciones"));
        chart.draw(view, options);
    }
</script>
</body>
</html>
