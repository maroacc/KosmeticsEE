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
<jsp:include page="navAdmin.jsp"/>
<div class="container">
    <div class="kosmetics">
        <p id="titulillo">Informe administrador</p>
    </div>
</div>
<div class="container">
    <section class="main row">
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div id="Prod" style="width:600px;height:600px;"></div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-6">
            <div class="textografica" style="height: 250px;">
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

    var contrato1 = <%=request.getAttribute("contrato1")%>;
    var contrato2 = <%=request.getAttribute("contrato2")%>;
    var contrato3 = <%=request.getAttribute("contrato3")%>;
    function drawChart() {

        var data = google.visualization.arrayToDataTable([
            ['Contrato', 'numero'],
            ['Plan Free', contrato1],
            ['Plan Extended', contrato2],
            ['Plan Pro', contrato3]
        ]);

        var options = {
            colors: ['#84DCC6', '#828282', '#F1F1F1'],
            slices: {2: {textStyle: {color: 'black'}}},
            pieSliceText: 'label',
            title: 'Contratos vendidos'
        };
        var chart = new google.visualization.PieChart(document.getElementById('Prod'));

        chart.draw(data, options);
    }

</script>
</body>
</html>
