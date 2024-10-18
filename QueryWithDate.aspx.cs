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
                // Mensaje de error
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

                    try

                    {

                        // Abrir la conexión

                        connection.Open();



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
                    //query = "SELECT * FROM vista WHERE Fecha_inicio >= @StartDate AND Fecha_inicio <= @EndDate";
                    break;
                case "2":
                    break;
                default:
                    break;
            }

            return query;
        }
    }
}