namespace TP03_JS_en_MVC_Moguelevsky_Sisro.Models;
  {
  public class PalabrasAhorcado
    {
        private List<string> palabras;

        public PalabrasAhorcado()
        {
            palabras = new List<string>()
            {
                "ALIEN";
                "INCEPTION";
                "SHREK";
                "AMADEUS";
                "JAWS";
                "HEAT";
                "MATILDA";
                "DUNKIRK";
                "ERASERHEAD";
                "PSYCHO";
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

