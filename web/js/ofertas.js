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

    $("#input-group-fija").hide();
    $("#card-producto").hide();
    $("#search-productos-especificos").hide();
    $("#input-porcentaje-x-y").hide();
    $("#input-cantidad-min").hide();
    $("#label-tipo").hide();
    $("#label-requisito").hide();
    $("#label-duración").hide();


    /*Porcentaje:
    * Muestra la card para introducir el valor del porcentaje*/

    $("#radio-porcentaje").click(function(){
        $("#card-valor").show();
        $("#input-group-porcentaje").show();
        $("#input-group-fija").hide();
        $("#card-producto").hide();
    });

    /*Cantidad fija
    * Muestra la card para introducir la cantidad fija*/

    $("#radio-fija").click(function(){
        $("#card-valor").show();
        $("#input-group-porcentaje").hide();
        $("#input-group-fija").show();
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
        resumenPorcentaje();

    });

    $("#radio-productos-especificos").click(function(){
        $("#search-productos-especificos").show();
        resumenPorcentaje();

    });

    $("#radio-gratis").click(function(){
        $("#input-porcentaje-x-y").hide();
    });

    $("#radio-porcentaje-x-y").click(function(){
        $("#input-porcentaje-x-y").show();
    });

    $("#radio-monto-min").click(function(){
        $("#input-group-monto-min").show();
        $("#input-cantidad-min").hide();
        resumenRequisitosMinimos();

    });

    $("#radio-cantidad-min").click(function(){
        $("#input-group-monto-min").hide();
        $("#input-cantidad-min").show();
        resumenRequisitosMinimos();

    });

    /*Rellenar Resumen Pedido*/
    $("#input-titulo").keyup(function(){
        var titulo = $("#input-titulo").val();
        if(titulo === ""){
            titulo = "Aún no se ha introducido ninún título"
        }
        $("#label-titulo").text(titulo);
    });

    $("#input-porcentaje").change(function(){
      resumenPorcentaje();
    });

    $("#input-fija").change(function(){
        resumenFija();
    });

    $("#input-group-monto-min").change(function () {
        resumenRequisitosMinimos();

    });

    $("#input-cantidad-min").change(function () {
        resumenRequisitosMinimos();

    });
    
    $("#input-fecha-inicio").change(function () {
        resumenFechas();
    });

    $("#input-fecha-fin").change(function () {
        resumenFechas();
    });



});

function resumenPorcentaje() {
    var porcentaje = $("#input-porcentaje").val();

    if(porcentaje === ""){
        $("#label-tipo").hide();
    }
    else {
        /* Comprueba si es pedido completo o selección de artículos*/
        var opt = $("input[name='radioScope']:checked"). val();
        if ( opt === "1"){
            $("#label-tipo").show().text(porcentaje + "% de descuento en pedido completo");
        }
        else if(opt === "2"){
            $("#label-tipo").show().text(porcentaje + "% de descuento en selección de artículos");
        }
    }

}

function resumenFija() {
    var fija = $("#input-fija").val();

    if(fija === ""){
        $("#label-tipo").hide();
    }
    else {
        /* Comprueba si es pedido completo o selección de artículos*/
        var opt = $("input[name='radioScope']:checked"). val();
        if ( opt === "1"){
            $("#label-tipo").show().text(fija + " € de descuento en pedido completo");
        }
        else if(opt === "2"){
            $("#label-tipo").show().text(fija + " € de descuento en selección de artículos");
        }
    }

}

function resumenRequisitosMinimos() {

    var monto = $("#input-monto-min").val();
    var cantidad = $("#input-cantidad-min").val();

    var opt = $("input[name='radioRequisito']:checked"). val();

    if (opt === "1"){
        if(monto === ""){
            $("#label-requisito").hide();

        } else {
            $("#label-requisito").show().text("Monto mínimo: " + monto + " €");
        }
    }
    else if(opt === "2"){
        if (cantidad === ""){
            $("#label-requisito").hide();

        }
        else {
            $("#label-requisito").show().text("Cantidad mínima: " + cantidad  + " artículos");

        }
    }

}

function resumenFechas() {
    var inicio = $("#input-fecha-inicio").val();
    var fin = $("#input-fecha-fin").val();

    $("#label-duración").show().text("Desde el " + inicio + " hasta el " + fin);
}