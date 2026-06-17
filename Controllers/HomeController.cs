using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP03_Moguelevsky_Sisro.Models;

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
       PalabrasAhorcado juego = new PalabrasAhorcado();
       ViewBag.Palabra = juego.ObtenerPalabra();
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
