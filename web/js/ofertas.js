/*

$(document).ready(function(){
    $("#radio-fija").on("click", function() {
        $("#radio-fija").hide();
    });
});*/

$(document).ready(function(){
    $("#input-fija").hide();
    $("#card-producto").hide();
    $("#search-productos-especificos").hide();
    $("#input-porcentaje-x-y").hide();
    $("#input-cantidad-min").hide();

    $("#radio-porcentaje").click(function(){
        $("#card-valor").show();
        $("#input-porcentaje").show();
        $("#input-fija").hide();
        $("#card-producto").hide();

    });

    $("#radio-fija").click(function(){
        $("#card-valor").show();
        $("#input-porcentaje").hide();
        $("#input-fija").show();
        $("#card-producto").hide();

    });

    $("#radio-envio").click(function(){
        $("#card-valor").hide();
        $("#card-producto").hide();
    });

    $("#radio-x-y").click(function(){
        $("#card-valor").hide();
        $("#card-producto").show();
    });

    $("#radio-pedido-completo").click(function(){
        $("#search-productos-especificos").hide();
    });

    $("#radio-productos-especificos").click(function(){
        $("#search-productos-especificos").show();
    });

    $("#radio-gratis").click(function(){
        $("#input-porcentaje-x-y").hide();
    });

    $("#radio-porcentaje-x-y").click(function(){
        $("#input-porcentaje-x-y").show();
    });

    $("#radio-monto-min").click(function(){
        $("#input-monto-min").show();
        $("#input-cantidad-min").hide();
    });

    $("#radio-cantidad-min").click(function(){
        $("#input-monto-min").hide();
        $("#input-cantidad-min").show();
    });
});
