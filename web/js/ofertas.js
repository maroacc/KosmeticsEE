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

    $("#input-pedido-completo").click(function(){
        $("#search-productos-especificos").hide();
    });

    $("#input-productos-especificos").click(function(){
        $("#search-productos-especificos").show();
    });
});
