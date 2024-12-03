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
    public partial class AddAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string accountNumber = txtAccountNumber.Text;
            string customerName = txtCustomerName.Text;
            string initialBalance = txtInitialBalance.Text;
            string password = txtPassword.Text; 

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "INSERT INTO Customers (AccountNumber, CustomerName, InitialBalance, Password) VALUES (@AccountNumber, @CustomerName, @InitialBalance, @Password)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@AccountNumber", accountNumber);
                        command.Parameters.AddWithValue("@CustomerName", customerName);
                        command.Parameters.AddWithValue("@InitialBalance", initialBalance);
                        command.Parameters.AddWithValue("@Password", password); 
                        command.ExecuteNonQuery();
                    }
                    
                    lblMessage.Text = "Customer account added successfully.";
                    lblMessage.ForeColor = System.Drawing.Color.LightGreen;
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