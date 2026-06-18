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

    let palabraActual =
        document.getElementById("PalabraConLetraAdivinada").innerHTML;

    let letrasMostradas = palabraActual.trim().split(" ");

    let nuevaPalabra = "";
    let acerto = false;

    for (let i = 0; i < palabra.length; i++) {

        if (palabra[i] === letra) {
            nuevaPalabra += letra + " ";
            acerto = true;
        }
        else if (letrasMostradas[i] && letrasMostradas[i] !== "_") {
            nuevaPalabra += letrasMostradas[i] + " ";
        }
        else {
            nuevaPalabra += "_ ";
        }
    }

    document.getElementById("PalabraConLetraAdivinada").innerHTML =
        nuevaPalabra;

    if (acerto) {
        document.getElementById("M").innerHTML = "Acertaste";
    } else {
        intentos--;
        document.getElementById("intentos").innerHTML = intentos;
        document.getElementById("M").innerHTML = "Fallaste";
    }

    if (!nuevaPalabra.includes("_")) {
        document.getElementById("mensaje").innerHTML = "GANASTE";
    }

    if (intentos === 0) {
        document.getElementById("mensaje").innerHTML = "PERDISTE";
        document.getElementById("palabraOculta").innerHTML = palabra;
    }

    input.value = "";
}
