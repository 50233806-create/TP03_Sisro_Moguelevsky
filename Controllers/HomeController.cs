using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP03_JS_en_MVC_Moguelevsky_Sisro.Models;

namespace TP03_JS_en_MVC_Moguelevsky_Sisro.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        BD juego = new BD();
        List<string> palabras = juego.RecibirPalabras();
        Random rnd = new Random();
        string palabra = palabras[rnd.Next(palabras.Count)];
        ViewBag.Palabra = palabra;
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
