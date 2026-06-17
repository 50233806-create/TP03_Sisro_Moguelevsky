let intentos = 10;

function ArriesgarLetra() {

    let input = document.getElementById("letra");
    let letra = input.value.toUpperCase();

    if (letra === "" || letra.length > 1) {
        document.getElementById("msj").innerHTML =
            "Ingrese una sola letra";
        return;
    }

    let palabra =
        document.getElementById("palabraReal").innerHTML.toUpperCase();

    let nuevaPalabra = "";
    let acerto = false;

    for (let i = 0; i < palabra.length; i++) {

        if (palabra[i] === letra) {
            nuevaPalabra += letra + " ";
            acerto = true;
        } else {
            nuevaPalabra += "_ ";
        }
    }

    if (acerto) {
        document.getElementById("M").innerHTML = "Acertaste";
        document.getElementById("PalabraConLetraAdivinada").innerHTML =
            nuevaPalabra;
    } else {
        intentos--;
        document.getElementById("intentos").innerHTML = intentos;
    }

    if (intentos === 0) {
        document.getElementById("mensaje").innerHTML = "PERDISTE";
        document.getElementById("palabraOculta").innerHTML = palabra;
    }

    input.value = "";
}
