<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Añadir Producto · Kosmetics</title>
</head>
<body>
<div class="pricing-header px-3 py pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Nuevo Producto</h1>
</div>

<div class="d-flex justify-content-center mb-5 " >
    <form class="col-10 col-lg-8 col-xl-6 needs-validation" id="form" onsubmit="return validate();" action="nuevoProducto" method="post" novalidate>
        <h4 class="my-3">Información general</h4>
        <div class="form-group">
            <label for="exampleNombreProducto">Nombre del producto</label>
            <label for="inputNombre" class="sr-only">Nombre del producto</label>
            <input type="text" class="form-control" id="inputNombre" name="inputNombre" aria-describedby="nombreHelpBlock" required>
            <small id="nombreHelpBlock" class="form-text text-muted">
                Nombre con el que se verá el producto en la aplicación
            </small>
            <div class="invalid-feedback">
                Por favor, especifique el nombre del producto
            </div>
        </div>


        <div class="my-3">
            <label for="validationTextarea" class="sr-only">Descripción del producto</label>
            <textarea class="form-control" id="validationTextarea" placeholder="Descripción del producto" aria-describedby="descriptionHelpBlock" required></textarea>
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
                    <input type="text" class="form-control" id="inputPrecio" name="precio" aria-describedby="emailHelp" placeholder="Precio en euros" required>
                    <div class="input-group-append">
                        <span class="input-group-text">€</span>
                    </div>
                </div>
                <div class="input-group col-lg-6 mb-3">

                    <input type="text" class="form-control" id="inputDescuento" name="descuento" aria-describedby="emailHelp" placeholder="Porcentaje de descuento" required>
                    <div class="input-group-append">
                        <span class="input-group-text">%</span>
                    </div>
                </div>
            </div>

        </div>
        <div class="form-group form-grid">
            <h4 class="my-3">Características</h4>
            <div class="form-row">
                <div class="col-lg-4">
                    <div class="form-check m-1 m-lg-2">
                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" >
                        <label class="form-check-label" for="defaultCheck1">
                            Larga Duración
                        </label>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-check m-1 m-lg-2">
                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" >
                        <label class="form-check-label" for="defaultCheck2">
                            Larga Duración
                        </label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-check m-1 m-lg-2">
                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck3" >
                        <label class="form-check-label" for="defaultCheck3">
                            Larga Duración
                        </label>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-check m-1 m-lg-2">
                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck4" >
                        <label class="form-check-label" for="defaultCheck4">
                            Larga Duración
                        </label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-check m-1 m-lg-2">
                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck5" >
                        <label class="form-check-label" for="defaultCheck5">
                            Larga Duración
                        </label>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-check m-1 m-lg-2">
                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck6" >
                        <label class="form-check-label" for="defaultCheck6">
                            Larga Duración
                        </label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-check m-1 m-lg-2">
                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck7" >
                        <label class="form-check-label" for="defaultCheck7">
                            Larga Duración
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <h4 class="my-3">Galería</h4>
                <div class="form-row">
                    <div class="custom-file mb-5 col-12">
                        <input type="file" class="custom-file-input" id="customFile" aria-describedby="imageHelpBlock" required>
                        <label class="custom-file-label" for="customFile">Imagen del producto</label>
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
                        <input type="text" class="form-control" id="exampleNombreProducto" aria-describedby="colorHexHelpBlock" placeholder="Hex" required>
                        <small id="colorHexHelpBlock" class="form-text text-muted col-12 px-0">
                            Especifique el color en hexadecimal
                        </small>
                    </div>

                    <button class="btn btn-link my-0 mx-2 p-0"><h4>+</h4></button>
                </div>
            </div>

        </div>
        <button class="btn btn-primary btn-lg btn-block mt-5" onclick="validate();" type="submit">Añadir producto</button>
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
