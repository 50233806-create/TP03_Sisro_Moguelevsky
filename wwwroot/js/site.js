    let intentos = 10;
function ArriesgarLetra()
{

    let input = document.getElementById("letra");
    let letra = input.value.toUpperCase();
    let palabra = document.getElementById("palabraReal").innerHTML;
    let palabraOculta = document.getElementById("palabraOculta").innerHTML;
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
            document.getElementById("M").innerHTML ="Acertaste ";
            document.getElementById("PalabraConLetraAdivinada").innerHTML= nuevaPalabra;       
            i++;
        }
        else
        {
        intentos=inentos-1;
        document.getElementById("intentos").innerHTML=intentos;
        }
    }   
    if(intentos==0)
    {
    document.getElementById("mensaje").innerHTML ="PERDISTE";
    document.getElementById("palabraOculta").innerHTML = palabra;
    }
    input.value = "";
}
