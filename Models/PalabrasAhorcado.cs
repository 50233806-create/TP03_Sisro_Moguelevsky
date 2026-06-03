namespace TP03_JS_en_MVC_Moguelevsky_Sisro.Models;
  {
  public class PalabrasAhorcado
    {
        private List<string> palabras;

        public PalabrasAhorcado()
        {
            palabras = new List<string>()
            {
                "ALLOSAURUS";
                "QUETZALCOATLUS";
                "CYMBOSPONDYLUS";
                "PLATYBELODON";
                "CRETOXYRHINA";
                "MACHRAUCHENIA";
                "TORVOSAURUS";
                "DUNKLEOSTEUS";
                "STEGOSAURUS";
                "STYXOSAURUS";
            }
        }
        public PalabrasAhorcado()
        {

        }

        public string ObtenerPalabra()
        {
            Random rnd = new Random();
            int posicion = rnd.Next(1,10);
            return palabras[posicion];
        }
    }
}
