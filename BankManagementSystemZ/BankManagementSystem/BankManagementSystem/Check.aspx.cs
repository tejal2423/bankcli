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
    public partial class Check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AccountNumber"] != null)
                {
                    string accountNumber = Session["AccountNumber"].ToString();
                    try
                    {
                        decimal initialBalance = GetInitialBalance(accountNumber);

                        lblTotalBalance.Text = "Total Balance is:";
                        lblInitialBalance.Text = initialBalance.ToString("C"); 
                    }
                    catch (Exception ex)
                    {
                        lblTotalBalance.Text = "Error:";
                        lblInitialBalance.Text = ex.Message;
                    }
                }
                else
                {
                    lblTotalBalance.Text = "Error:";
                    lblInitialBalance.Text = "Account number not found. Please log in again.";
                }
            }
        }

        private decimal GetInitialBalance(string accountNumber)
        {
            decimal balance = 0;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            string query = "SELECT InitialBalance FROM Customers WHERE AccountNumber = @AccountNumber";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@AccountNumber", accountNumber);

                    try
                    {
                        connection.Open(); 
                        object result = command.ExecuteScalar(); 

                        if (result != null && decimal.TryParse(result.ToString(), out balance))
                        {
                            return balance;
                        }
                        else
                        {
                            throw new Exception("Account not found or no balance available.");
                        }
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Database error: " + ex.Message);
                    }
                }
            }
        }
    }
}