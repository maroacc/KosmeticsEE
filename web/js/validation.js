'use strict';
function validate() {
    var ok = true;
    var inputs = $("form").find(':input');
    for ( var i = 0; i < inputs.length; i++ ) {
        //inputs[i].classList.add("is-invalid");
        var inpObj = inputs[i];
        if (!inpObj.checkValidity()) {
            inpObj.classList.add("is-invalid");
            ok = false;
            var name = inpObj.name;
            if (name != ""){
                //$("#"+ name).parent().find(".invalid-feedback").text("Por favor, especifique el nombre del producto");
                // Esto cambiaría el mensaje de error en caso de necesitarlo
            }
        }
        else {
            inpObj.classList.remove("is-invalid");
        }
    return ok;
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