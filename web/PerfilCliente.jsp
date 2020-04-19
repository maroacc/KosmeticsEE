<%--
  Created by IntelliJ IDEA.
  User: Nico
  Date: 19/04/2020
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
<!--Aquí va la parte de "Perfil del cliente"-->
<div class="container">
    <div class="kosmetics">
        <p id="titulillo">Perfil del cliente</p>
    </div>
</div>

<!--Primera línea de fotos-->
<div class="container">
    <section class="main row">
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div id="Genero" style="width:600px;height:600px;"></div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div class="textografica" style="height: 250px;">
                <p style="padding-left: 10px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu laoreet elit. Curabitur vel convallis sapien. Cras eu eleifend diam. Praesent vestibulum eleifend vehicula. Suspendisse suscipit nibh at dictum lobortis. Aenean augue urna, egestas ac varius sed, feugiat eget risus.</p>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div class="textografica" style="height: 200px;">
                <p style="padding-left: 10px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu laoreet elit. Curabitur vel convallis sapien. Cras eu eleifend diam. Praesent vestibulum eleifend vehicula. Suspendisse suscipit nibh at dictum lobortis. Aenean augue urna, egestas ac varius sed, feugiat eget risus.</p>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div id="Edad" style="width:600px;height:600px;"></div>
        </div>
        <div class="col-xs-12 col-md-5 col-lg-5">
            <br/>
            <p>Productos más vendidos:</p>
        </div>
        <div class="col-xs-12 col-md-12 col-lg-12">
            <div id="chart_div" style="width: 900px; height: 450px; padding-left: 150px"></div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div id="Productos" style="width:600px;height:600px;"></div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div class="textografica" style="height: 100px;">
                <p style="padding-left: 10px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu laoreet elit. Curabitur vel convallis sapien. Cras eu eleifend diam. Praesent vestibulum eleifend vehicula. Suspendisse suscipit nibh at dictum lobortis. Aenean augue urna, egestas ac varius sed, feugiat eget risus.</p>
            </div>
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
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        var data = google.visualization.arrayToDataTable([
            ['sexo', 'numero'],
            ['No binario', 30],
            ['Hombre', 15],
            ['Mujer', 35],
            ['NC',  20]
        ]);

        var options = {
            colors: ['#84DCC6', '#A5FFD6', '#828282', '#F1F1F1'],
            slices: { 3: {textStyle: { color: 'black'}}, 1: {textStyle: { color: 'black'}}},
            pieSliceText: 'label',
            title: 'Género'
        };

        var chart = new google.visualization.PieChart(document.getElementById('Genero'));

        chart.draw(data, options);

        var data = google.visualization.arrayToDataTable([
            ['Rango edad', 'cantidad'],
            ['18-25', 35],
            ['25-30', 15],
            ['30-40', 20],
            ['+40', 30]
        ]);

        var options = {
            colors: ['#84DCC6', '#A5FFD6', '#828282', '#F1F1F1'],
            slices: { 3: {textStyle: { color: 'black'}}, 1: {textStyle: { color: 'black'}}},
            pieSliceText: 'label',
            tooltip: {ignoreBounds : true},
            title: 'Edad'
        };

        var chart = new google.visualization.PieChart(document.getElementById('Edad'));

        chart.draw(data, options);

        var data = google.visualization.arrayToDataTable([
            ['Productos', 'cantidad'],
            ['Bases y primers', 35],
            ['Sombra de ojos', 15],
            ['Máscaras de pestañas', 20],
            ['Pintalabios', 30]
        ]);

        var options = {
            colors: ['#84DCC6', '#A5FFD6', '#828282', '#F1F1F1'],
            slices: { 3: {textStyle: { color: 'black'}}, 1: {textStyle: { color: 'black'}}},
            tooltip: {ignoreBounds : true},
            title: 'Productos que compran'
        };

        var chart = new google.visualization.PieChart(document.getElementById('Productos'));

        chart.draw(data, options);
    }
    var myMapsApiKey = 'SomeMagicToSetThis';
    google.charts.load('45', { packages: [ 'geochart'], mapsApiKey: myMapsApiKey  });
    google.charts.setOnLoadCallback(drawMarkersMap);

    function drawMarkersMap() {
        var data = google.visualization.arrayToDataTable([
            ['Latitud', 'Longitud', 'País', 'Population'],
            [46.2276382, 2.2137489, 'France', 65700000],
            [40.4636688, -3.7492199, 'Spain', 46660000]
        ]);

        var options = {
            sizeAxis: { minValue: 0, maxValue: 100 },
            region: '150',
            backgroundColor: '#ffffff',
            datalessRegionColor: '#17A2B8',
            displayMode: 'markers',
            title: 'Mapa',
            fontFamily: 'Comic Sans',
            colorAxis: {colors: ['#F1F1F1', '#828282']} // orange to blue
        };

        var chart = new google.visualization.GeoChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    };
</script>
</body>
</html>