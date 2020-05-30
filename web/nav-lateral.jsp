<%--
  Created by IntelliJ IDEA.
  User: Maroa
  Date: 30/05/2020
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nav Lateral</title>
</head>
<body>
<ul class="navbar-nav bg-gradient-info sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Nav Item - Tablero -->
    <li class="nav-item">
        <a class="nav-link" href="tablero">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Tablero</span></a>
    </li>

    <!-- Divisor -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Informes
    </div>

    <!-- Nav Item - Estadísticas Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapseEstadisticas" data-target="#collapseEstadisticas"
           aria-expanded="true" aria-controls="collapseEstadisticas">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Estadísticas</span>
        </a>
        <div id="collapseEstadisticas" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="#">Estadísticas 1</a>
                <a class="collapse-item" href="#">Estadísticas 2</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Audiencia Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAudiencia"
           aria-expanded="true" aria-controls="collapseAudiencia">
            <i class="fas fa-fw fa-users"></i>
            <span>Audiencia</span>
        </a>
        <div id="collapseAudiencia" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="audiencia">Audiencia 1</a>
                <a class="collapse-item" href="#">Audiencia 2</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Opiniones Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
           aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-comments"></i>
            <span>Opiniones</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="opiniones">Opiniones 1</a>
                <a class="collapse-item" href="#">Opiniones 2</a>
            </div>
        </div>
    </li>

    <!-- Divisor -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Administrar
    </div>

    <!-- Nav Item - Catálogo Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-shopping-bag"></i>
            <span>Catálogo</span></a>
    </li>

    <!-- Nav Item - Ofertas -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-tags"></i>
            <span>Ofertas</span></a>
    </li>

    <!-- Nav Item - Ajustes -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-cogs"></i>
            <span>Ajustes</span></a>
    </li>

    <!-- Divisor -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>

</body>
</html>
