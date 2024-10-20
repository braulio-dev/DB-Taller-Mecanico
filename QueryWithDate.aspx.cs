using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Asn1.IsisMtt.Ocsp;

namespace ProyectoBD
{
    public partial class QueryWithDate : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string startDate = txtStartDate.Text;
            string endDate = txtEndDate.Text;

            if (string.IsNullOrEmpty(startDate) || string.IsNullOrEmpty(endDate))
            {
                Response.Write("Por favor ingrese ambas fechas.");
                return;
            }

            // Obtener la consulta seleccionada 
            string selectedQuery = Request.QueryString["consultaId"];
            string query = GetQueryBySelection(selectedQuery, startDate, endDate);

            // Crear una conexión MySQL aqui deben poner la información del servidor, de la bdd, usuario y password

            using (MySqlConnection connection = new MySqlConnection(Globales.connectionStringLocal))

            {

                // Crear un comando MySQL

                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@startDate", DateTime.Parse(startDate));
                    command.Parameters.AddWithValue("@endDate", DateTime.Parse(endDate));

                    // Abrir la conexión
                    connection.Open();

                    try

                    {

                        // Crear un adaptador de datos

                        using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))

                        {

                            // Crear un DataTable para almacenar los datos

                            DataTable dataTable = new DataTable();



                            // Llenar el DataTable

                            adapter.Fill(dataTable);



                            // Asignar el DataTable al GridView

                            GridViewResults.DataSource = dataTable;

                            GridViewResults.DataBind();

                        }

                    }

                    catch (Exception ex)

                    {

                        // Manejo de excepciones

                        // Puedes mostrar un mensaje de error o registrar el error

                        Response.Write("Error: " + ex.Message);

                    }

                }

            }
        }

        private string GetQueryBySelection(string selectedQuery, string startDate, string endDate)
        {
            string query = "";

            // Condicional para definir la consulta SQL basada en la seleccion en el menu de consultas
            switch (selectedQuery)
            {
                case "1":
                    query = @"
                        SELECT Nombre 
                        FROM vw_reparaciones 
                        WHERE Fecha_inicio >= @startDate AND Fecha_inicio <= @endDate 
                        GROUP BY Nombre 
                        ORDER BY COUNT(*) DESC 
                        LIMIT 1";
                    break;
                case "5":
                    query = @"
                        SELECT Nombre_Departamento, COUNT(*) AS Numero_de_Atenciones
                        FROM vw_diagnostico_departamento
                        WHERE Fecha_inicio >= @startDate AND Fecha_inicio <= @endDate 
                        GROUP BY ID_Departamento";
                    break;
                case "6":
                    query = @"
                        SELECT SUM(Costo_Total) AS Ganancias
                        FROM vw_ventas_dep1
                        WHERE Fecha_inicio >= @startDate AND Fecha_inicio <= @endDate";
                    break;
                case "7":
                    query = @"
                        SELECT Nombre, Sueldo * COUNT(*) AS Sueldo_Ganado
                        FROM vw_ganancia_empleado
                        WHERE Fecha_inicio >= @startDate AND Fecha_inicio <= @endDate
                        GROUP BY ID_Empleado
                        ORDER BY COUNT(*) DESC
                        LIMIT 1";
                    break;
                case "11":
                    query = @"
                        SELECT ID_Departamento, Nombre_Departamento, COUNT(ID_Articulo) AS Numero_Refacciones_Utilizadas
                        FROM vw_consumo_articulos
                        WHERE Fecha_inicio >= @startDate AND Fecha_inicio <= @endDate
                        GROUP BY ID_Departamento, Nombre_Departamento
                        ORDER BY Numero_Refacciones_Utilizadas DESC
                        LIMIT 1";
                    break;
                case "12":
                    query = @"
                        SELECT ID_Prom, Nombre_Prom
                        FROM vw_promociones
                        WHERE Fecha_inicio >= @startDate AND Fecha_inicio <= @endDate";
                    break;
                case "13":
                    query = @"
                        SELECT * FROM vw_servicio_garantia
                        WHERE Fecha >= @startDate AND Fecha <= @endDate";
                    break;
                case "14":
                    query = @"
                        SELECT ID_Departamento, Nombre, COUNT(*) AS Total_Reparaciones
                        FROM vw_dep_num_reparaciones
                        WHERE Fecha_inicio >= @startDate AND Fecha_inicio <= @endDate
                        GROUP  BY ID_Departamento
                        ORDER BY COUNT(*) DESC
                        LIMIT 1";
                    break;
                default:
                    break;
            }

            return query;
        }
    }
}