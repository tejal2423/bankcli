using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace BankManagementSystem
{
    public partial class DisplayAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCustomerData();
            }
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Banker.aspx");
        }

        private void LoadCustomerData()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT AccountNumber, CustomerName, InitialBalance, Password FROM Customers";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            GridViewCustomers.DataSource = dataTable;
                            GridViewCustomers.DataBind();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
        }
    }
}
