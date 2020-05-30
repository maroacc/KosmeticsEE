var XHRObject = false;

if(window.XMLHttpRequest){
    XHRObject = new XMLHttpRequest();
}else if (window.ActiveXObject){
    XHRObject = new ActiveXObject("Microsoft.XMLHTTP");
}
var form = document.getElementById("myForm");
function handleForm(event) { event.preventDefault(); }
form.addEventListener('submit', handleForm);

function getDatos(fuenteDatos, divID) {
    if(XHRObject){
        var obj = document.getElementById(divID);
        var cookie = getCookie("error");
        XHRObject.open("GET", fuenteDatos);

        XHRObject.onreadystatechange = function () {
            if (XHRObject.readyState == 4 && XHRObject.status == 200){
                if(cookie == true)
                    obj.innerHTML = XHRObject.responseText;
                else
                    window.location = "tablero.jsp";
            }
        }
        XHRObject.send(null)
    }
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
