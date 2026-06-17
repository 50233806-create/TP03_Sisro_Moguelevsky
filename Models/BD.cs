using Microsoft.Data.SqlClient;
using Dapper;

namespace TP03_Moguelevsky_Sisro.Models;
public class BD
{
    private string connectionString = @"Server=localhost; DataBase AhorcadoCinematico; Integrated Security=True; Trust Server Certificate=True;";
    public List<string> RecibirPalabras()
    {
        List<string> palabras = new List<string>();
        using(SqlConnection connection = new SqlConnection(connectionString))
        string query = "SELECT palabra FROM Palabras";
        palabras = connection.Query<string>(query).ToList();
        return palabras;
    }
}
