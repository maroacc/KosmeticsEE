<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>KosmeticsEE</title>

    <!-- Custom fonts for this template-->
    <link href="startbootstrap-sb-admin-2-gh-pages/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="startbootstrap-sb-admin-2-gh-pages/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

<%--Nav Logged in--%>
<jsp:include page="nav.jsp"/>

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="nav-lateral.jsp"/>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mt-4 mb-2 text-gray-800">Tablero</h1>
                <p class="mb-4">El tablero ofrece una visión general de tu empresa con los datos más relevantes y
                    siempre actualizados</a>.</p>

                <div class="row">

                    <!-- Número de visitas -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Visitas (al
                                            mes)
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">40,000</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-eye fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Opiniones
                                            (totales)
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">215,000</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pending Requests Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Clicks al
                                            sitio web
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-link fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-danger shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Rebote
                                        </div>
                                        <div class="row no-gutters align-items-center">
                                            <div class="col-auto">
                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                            </div>
                                            <div class="col">
                                                <div class="progress progress-sm mr-2">
                                                    <div class="progress-bar bg-danger" role="progressbar"
                                                         style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <img src="assets/rotating-arrow-to-the-left.svg" height="32">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- Content Row -->
                <div class="row">

                    <div class="col-xl-12 col-lg-12">

                        <!-- Area Chart -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-info">Opiniones</h6>
                            </div>
                            <div class="card-body">
                                <!--Contenedor review-->
                                <c:forEach var="review" items="${sessionScope.reviews}">
                                    <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-1">
                                                <img src="assets/images/profile.jpg" height="64px"
                                                     class="img rounded-circle d-none d-md-block">
                                                <!--<span class="rounded-circle icono m-auto">MT</span>-->
                                            </div>

                                            <div class="col-11">
                                                <div class="d-none d-lg-block">
                                                    <span class="float-left h5"><c:out value="${review.commentTitle}"></c:out></span>
                                                    <ul class="list-inline d-none d-lg-inline float-right">
                                                        <li class="list-inline-item mx-0"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item mx-0"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item mx-0"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item mx-0"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item mx-0"><span class="fa fa-star fa-lg"></span></li>
                                                    </ul>
                                                </div>

                                                <div class="d-lg-none">
                                                    <h5><c:out value="${review.commentTitle}"></c:out></h5>
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item"><span class="fa fa-star fa-lg"></span></li>
                                                        <li class="list-inline-item"><span class="fa fa-star fa-lg"></span></li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                                <p><c:out value="${review.comment}"></c:out></p>
                                                <ul class="list-inline">
                                                    <li class="list-inline-item">
                                                        <span class="text-secondary pl-1 text-center pl-0"><p><c:out value="${review.user.name}"></c:out></p></span>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <span class="small text-gray-500 pl-1 text-center"><c:out value="${review.date2string()}"></c:out></span>
                                                    </li>
                                                </ul>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>


                    </div>


                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Your Website 2019</span>
                </div>
                <div class="text-center my-2 copyright">Icons made by <a href="https://www.flaticon.com/authors/freepik"
                                                                         title="Freepik">Freepik</a> from <a
                        href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>

            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-info" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="startbootstrap-sb-admin-2-gh-pages/vendor/jquery/jquery.min.js"></script>
<script src="startbootstrap-sb-admin-2-gh-pages/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="startbootstrap-sb-admin-2-gh-pages/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="startbootstrap-sb-admin-2-gh-pages/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="startbootstrap-sb-admin-2-gh-pages/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="startbootstrap-sb-admin-2-gh-pages/js/demo/chart-area-demo.js"></script>
<script src="startbootstrap-sb-admin-2-gh-pages/js/demo/chart-pie-demo.js"></script>
<script src="startbootstrap-sb-admin-2-gh-pages/js/demo/chart-bar-demo.js"></script>

</body>

</html>
