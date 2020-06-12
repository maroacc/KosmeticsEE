/*

$(document).ready(function(){
    $("#radio-fija").on("click", function() {
        $("#radio-fija").hide();
    });
});*/

$(document).ready(function(){

    /*Inicializamos el pedido con:
    * Tipo: porcentaje
    * aplicado al pedido entero */

    $("#input-fija").hide();
    $("#card-producto").hide();
    $("#search-productos-especificos").hide();
    $("#input-porcentaje-x-y").hide();
    $("#input-cantidad-min").hide();
    $("#label-tipo").hide();

    /*Porcentaje:
    * Muestra la card para introducir el valor del porcentaje*/

    $("#radio-porcentaje").click(function(){
        $("#card-valor").show();
        $("#input-group-porcentaje").show();
        $("#input-fija").hide();
        $("#card-producto").hide();
    });

    /*Cantidad fija
    * Muestra la card para introducir la cantidad fija*/

    $("#radio-fija").click(function(){
        $("#card-valor").show();
        $("#input-group-porcentaje").hide();
        $("#input-fija").show();
        $("#card-producto").hide();

    });

    /*Envío gratuíto*/

    $("#radio-envio").click(function(){
        $("#card-valor").hide();
        $("#card-producto").hide();
    });

    /*Compra X, llévate Y
    * Muestra la card para elegir qué artículos,
    * si Y es gratis o tiene un descuento */

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

    /*Rellenar Resumen Pedido*/
    $("#input-titulo").keyup(function(){
        var titulo = $("#input-titulo").val();
        if(titulo === ""){
            titulo = "Aún no se ha introducido ningún título"
        }
        $("#label-titulo").text(titulo);
    });

    $("#input-porcentaje").change(function(){
      resumenPorcentaje();
    });

/*    $("#radio-monto-min").click(function(){
        resumenPorcentaje();
    });

    $("#radio-cantidad-min").click(function(){
        resumenPorcentaje();
    });*/

});

function resumenPorcentaje() {
    var porcentaje = $("#input-porcentaje").val();

    if(porcentaje === ""){
        $("#label-tipo").hide();
    }
    else {
        /* Comprueba si es pedido completo o selección de artículos*/
        var opt = $("input[name='exampleRadios2']:checked"). val();
        if ( opt == 1){
            $("#label-tipo").show().text(porcentaje + "% de descuento en pedido completo");
        }
        else if(opt == 2){
            $("#label-tipo").show().text(porcentaje + "% de descuento en selección de artículos");
        }
    }

}