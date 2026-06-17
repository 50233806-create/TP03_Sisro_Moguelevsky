using Microsoft.Data.SqlClient;
using Dapper;

namespace TP03_Moguelevsky_Sisro.Models;

public class BD
{
    private string connectionString =
@"Server=localhost;Database=AhorcadoCinematico;Integrated Security=True;TrustServerCertificate=True;";

    public List<string> RecibirPalabras()
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT palabra FROM Palabras";
            return connection.Query<string>(query).ToList();
        }
    }
}
