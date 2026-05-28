namespace TP03_JS_en_MVC_Moguelevsky_Sisro.Models;
  {
  public class PalabrasAhorcado
    {
        private List<string> palabras;

        public PalabrasAhorcado()
        {
            palabras = new List<string>()
            {
                "PARQUE";
                "VIAJES";
                "TRICICLO";
                "ELEFANTE";
                "CRETOXYRHINA";
                "CABALLOS";
                "DERPORTES";
                "ESCUELA";
                "HABITACIONES";
                "CATABASIS";
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