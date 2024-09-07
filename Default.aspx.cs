using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ProyectoBD
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBusca_Click(object sender, EventArgs e)

        {

            // Crear la consulta SQL

            string query = "SELECT * FROM cliente";



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

                            GridViewClientes.DataSource = dataTable;

                            GridViewClientes.DataBind();

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
    }
}