<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
    <title>Añadir Producto · Kosmetics</title>
</head>
<% response.addCookie(new Cookie("id", "24")); %>
<body>
<div class="pricing-header px-3 py pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Editar Producto</h1>
</div>

<div class="d-flex justify-content-center mb-5 " >
    <form class="col-10 col-lg-8 col-xl-6 needs-validation" enctype="multipart/form-data" id="form" onsubmit="return validate();" action="ServletEditarProducto" method="post" novalidate>
        <h4 class="my-3">Información general</h4>
        <div class="form-group">
            <label for="inputNombre">Nombre del producto</label>
            <label for="inputNombre" class="sr-only">Nombre del producto</label>
            <input type="text" class="form-control-plaintext" id="inputNombre" name="inputNombre" aria-describedby="nombreHelpBlock" value="${producto.name}" readonly>
            <small id="nombreHelpBlock" class="form-text text-muted">
                Nombre con el que se verá el producto en la aplicación
            </small>
            <div class="invalid-feedback">
                Por favor, especifique el nombre del producto
            </div>
        </div>


        <div class="my-3">
            <label for="validationTextarea" class="sr-only">Descripción del producto</label>
            <textarea class="form-control" id="validationTextarea" placeholder="Descripción del producto" aria-describedby="descriptionHelpBlock" required><c:out value="${producto.description}"></c:out></textarea>
            <small id="descriptionHelpBlock" class="form-text text-muted">
                La descripción debe contener al menos 100 caracteres y un máximo de 300
            </small>
            <div class="invalid-feedback">
                Por favor, introduzca una descripción del producto.
            </div>
        </div>

        <div class="form-group">
            <label for="exampleCategoria">Categoría</label>
            <select class="form-control" id="exampleCategoria" name="categoria">
                <option>Base</option>
                <option>Cejas</option>
                <option>Colorete</option>
                <option>Contouring</option>
                <option>Corrector</option>
                <option>Eyeliner</option>
                <option>Iluminador</option>
                <option>Máscara de pestañas</option>
                <option>Pestañas postizas</option>
                <option>Pintalabios</option>
                <option>Sombra de ojos</option>

            </select>
        </div>
        <div class="form-group">
            <h4 class="my-3">Precio</h4>
            <div class="form-row">
                <div class="input-group col-lg-6 mb-3">
                    <label for="inputDescuento" class="sr-only">Porcentaje de descuento</label>
                    <label for="inputPrecio" class="sr-only">Precio en euros</label>
                    <input type="text" class="form-control" id="inputPrecio" name="precio" aria-describedby="emailHelp" value="${producto.price}" required>
                    <div class="input-group-append">
                        <span class="input-group-text">€</span>
                    </div>
                </div>
                <div class="input-group col-lg-6 mb-3">

                    <input type="text" class="form-control" id="inputDescuento" name="descuento" aria-describedby="emailHelp" value="${producto.offer}" required>
                    <div class="input-group-append">
                        <span class="input-group-text">%</span>
                    </div>
                </div>
            </div>

        </div>
        <div class="form-group form-grid">
            <h4 class="my-3">Características</h4>
            <select id="productCaracteristicas" class="selectpicker form-control" multiple data-live-search="true" multiple data-max-options="5" multiple data-selected-text-format="count" name="features">
                <c:forEach var="feature" items="${sessionScope.features}">
                    <c:if test="${feature.key==23}">
                        <option value="${feature.key}" selected><c:out value ="${feature.value}"/> </option>
                    </c:if>
                    <c:if test="${not (feature.key==23)}">
                        <option value="${feature.key}" > <c:out value ="${feature.value}"/> </option>
                    </c:if>
                </c:forEach>
            </select>
            <div class="form-group">
                <h4 class="my-3">Galería</h4>
                <div class="form-row">
                    <div class="custom-file mb-5 col-12">
                        <input type="file" class="custom-file-input" name="imagen[]" id="upload-files" accept="image/*" aria-describedby="imageHelpBlock" required>
                        <label class="custom-file-label" for="upload-files">Imagen del producto</label>
                        <small id="imageHelpBlock" class="form-text text-muted">
                            La imagen debe ser de alta calidad (al menos 5MP) y la orientación debe ser vertical
                        </small>
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label class="sr-only" for="inputNombreColor">Nombre del color</label>
                        <select class="form-control" id="inputNombreColor" aria-describedby="colorHelpBlock" required>
                            <option>Negro</option>
                            <option>Blanco</option>
                            <option>Beige</option>
                        </select>
                        <small id="colorHelpBlock" class="form-text text-muted">
                            Especifique el color del producto
                        </small>
                    </div>

                    <div class="input-group col-lg-6 mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">#</span>
                        </div>
                        <input type="text" class="form-control" id="inputColor" name="inputColor" aria-describedby="colorHexHelpBlock" placeholder="#FFFFFF" required>
                        <small id="colorHexHelpBlock" class="form-text text-muted col-12 px-0">
                            Especifique el color en hexadecimal
                        </small>
                    </div>

<%--
                    <button class="btn btn-link my-0 mx-2 p-0"><h4>+</h4></button>
--%>
                </div>
            </div>

        </div>
        <button class="btn btn-info btn-lg btn-block mt-5" onclick="validate();" type="submit">Actualizar cambios</button>
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/bootstrap.bundle.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
    $('#upload-files').on('change',function(){
        //get the file name
        var fileName = $(this).val();
        //replace the "Choose a file" label
        $(this).next('.custom-file-label').html(fileName);
    })
</script>
</body>
</html>
