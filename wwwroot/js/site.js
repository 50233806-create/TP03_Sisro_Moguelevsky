let intentos = 10;
function Ahorcado()
{
    let input = document.getElementById("letra");
    let letra = input.value.toUpperCase();
    let palabra = document.getElementById("palabraReal").value;
    let palabraOculta =document.getElementById("palabraOculta").innerHTML;
    let nuevaPalabra = "";
    let acerto = false;
    if(letra == "" || letra.length>1)
    {
    document.getElementById("msj").innerHTML="Ingrese una sola letra"
    return;
    }
    for(let i = 0; i < palabra.length; i++)
    {
        if(palabra [i] == letra)
        {
            nuevaPalabra += letra + " ";
            acerto = true;
            i++;
        }
        else(!acerto)
        {
        intentos--;
        document.getElementById("intentos").innerHTML=intentos;
        }
    }   
    if(acerto==palabra.length)
    {
    document.getElementById("mensaje").innerHTML ="GANASTE";
    }
    if(intentos== 0)
    {
    document.getElementById("mensaje").innerHTML ="PERDISTE";
    document.getElementById("palabraOculta").innerHTML = palabra;
    }
    input.value = "";
}
