var slider = document.getElementById("customRange1");
var output = document.getElementById("precioFiltro");
output.innerHTML = slider.value;

slider.oninput = function() {
    output.value = this.value;
}

output.oninput = function() {
    slider.value = this.value;
}
