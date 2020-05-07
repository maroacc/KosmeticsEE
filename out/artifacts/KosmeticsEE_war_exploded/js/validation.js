'use strict';
function validate() {
    var ok = true;
    var inputs = $("form.needs-validation").find(':input');
    for ( var i = 0; i < inputs.length; i++ ) {
        //inputs[i].classList.add("is-invalid");
        var inpObj = inputs[i];
        var nico = inpObj.value()
        alert(inpObj.value());
        if (!inpObj.checkValidity()) {
            inpObj.classList.add("is-invalid");
            ok = false;
            if(inpObj.validity.typeMismatch){
                if(inpObj.type = "email"){
                    $("#"+ inpObj.name).parent().find(".invalid-feedback").text("Por favor, introduzca un email con un formato válido");
                }
                if(inpObj.type = "url"){
                    $("#"+ inpObj.name).parent().find(".invalid-feedback").text("Por favor, una url con un formato válido");
                }
            }
            var name = inpObj.name;
            if (name != ""){
                //$("#"+ name).parent().find(".invalid-feedback").text("Por favor, especifique el nombre del producto");
                // Esto cambiaría el mensaje de error en caso de necesitarlo
            }
        }
        else {
            inpObj.classList.remove("is-invalid");
        }
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
    return ok;
}

function setErrorMessage(input, error){
}