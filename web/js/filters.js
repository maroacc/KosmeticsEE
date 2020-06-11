var slider = document.getElementById("customRange1");
var output = document.getElementById("precioFiltro");
output.innerHTML = slider.value;

slider.oninput = function() {
    output.value = this.value;
}

output.oninput = function() {
    slider.value = this.value;
}

$(document).ready(function(){
    $("#myInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $(".menu").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});