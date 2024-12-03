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
    public partial class DeleteAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {          
            string accountNumber = txtAccountNumber.Text;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    
                    string query = "DELETE FROM Customers WHERE AccountNumber = @AccountNumber";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@AccountNumber", accountNumber);

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Customer account deleted successfully.";
                            lblMessage.ForeColor = System.Drawing.Color.LightGreen;
                        }
                        else
                        {
                            lblMessage.Text = "No customer found with the provided account number.";
                            lblMessage.ForeColor = System.Drawing.Color.Yellow;
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}