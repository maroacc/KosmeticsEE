'use strict';
function validate() {
    var inpObj = document.getElementById("inputNombre");
    var inputs = $("form").find(':input');

    for ( var i = 0; i < inputs.length; i++ ) {
        //inputs[i].classList.add("is-invalid");
        var inpObj = inputs[i];
        inpObj.classList.add("is-invalid");
    }

    /*if (!inpObj.checkValidity()) {
        inpObj.classList.add("is-invalid");
        var name = inpObj.name;
        $("#"+ name).parent().find(".invalid-feedback").text("Por favor, especifique el nombre del producto");
        //$("#"+ name).hide();
        //document.getElementById("geeks")
            //.innerHTML = inpObj.validationMessage;
    } else {
        alert("Es valido");
        //document.getElementById("geeks")
            //.innerHTML = "Input is ALL RIGHT";
    }*/
    return false;
}

function setErrorMessage(input, error){
}