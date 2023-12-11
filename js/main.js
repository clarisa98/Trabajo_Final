
function controlDeForm() {
    var flag = false;
    /*---validacion de Nombre-----*/
    const nombre = document.getElementById("nombre");
    const nombreElement = nombre.value;
    const regex = /^[a-zA-ZáéíóúñÑ ]+$/;
    if (regex.test(nombreElement)) {
        nombre.classList.remove("is-invalid");
        flag = true;
    }
    else {
        nombre.classList.add("is-invalid");
        nombre.focus();
        return flag = false;
    }
    /*---validacion de Apellido-----*/
    const apellido = document.getElementById("apellido");
    const apellidoElement = apellido.value;
    const apellidoRegEx = /^(?=.{3,36}$)[a-zñA-ZÑ]{1,36}(\s?[a-zñA-ZÑ]{1,36})*$/;
    if (apellidoRegEx.test(apellidoElement)) {
        apellido.classList.remove("is-invalid");
        flag = true;
    }
    else {
        apellido.classList.add("is-invalid");
        apellido.focus();
        return flag = false;
    }

    /*---validacion de correo-----*/
    const correoRegEx = /^[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,6}$/;

    const correo = document.getElementById("mail");
    const correoElement = correo.value;

    if (correoRegEx.test(correoElement)) {
        correo.classList.remove("is-invalid");
        flag = true;
    } else {
        correo.classList.add("is-invalid");
        correo.focus();
        return flag = false;
    }
    return flag;

}

function valorDeEntrada() {
    if (controlDeForm() === true) {
        var cantidad = document.getElementById('cantidadEntradas').value;
        var CategoriaElegida = parseFloat(document.getElementById("categoria").value);
        const Ticket = 200;
        var resumenTotal = 0;
        switch (CategoriaElegida) {
            case 1:
                resumenTotal = Ticket * cantidad * 0.2
                break;
            case 2:
                resumenTotal = Ticket * cantidad * 0.5
                break;
            case 3:
                resumenTotal = Ticket * cantidad * 0.85
                break;
            default:
                resumenTotal = Ticket * cantidad
                break;
        }

        document.getElementById('total').innerText = resumenTotal;
    }
    else {
        alert("verifique que los datos sean correctos para poder indicar el precio,todas las casillas deben estar completas correctamente");
    }
}

const BTNCLICK = document.getElementById('resumen');
BTNCLICK.addEventListener('click', valorDeEntrada);