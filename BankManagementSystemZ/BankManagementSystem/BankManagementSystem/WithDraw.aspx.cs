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
    public partial class WithDraw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = ""; 

            if (Session["AccountNumber"] == null)
            {
                lblMessage.Text = "Account number is not provided.";
                lblMessage.Style["color"] = "red";
                btnSubmit.Enabled = false; 
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string withdrawAmountText = txtWithdrawAmount.Text.Trim();
            decimal withdrawAmount;

            if (!decimal.TryParse(withdrawAmountText, out withdrawAmount) || withdrawAmount <= 0)
            {
                lblMessage.Text = "Please enter a valid withdrawal amount.";
                lblMessage.Style["color"] = "red";
                return;
            }

            string accountNumber = Session["AccountNumber"].ToString();
            if (string.IsNullOrEmpty(accountNumber))
            {
                lblMessage.Text = "Account number is not available.";
                lblMessage.Style["color"] = "red";
                return;
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    string checkBalanceQuery = "SELECT InitialBalance FROM Customers WHERE AccountNumber = @AccountNumber";
                    SqlCommand checkBalanceCmd = new SqlCommand(checkBalanceQuery, conn);
                    checkBalanceCmd.Parameters.AddWithValue("@AccountNumber", accountNumber);

                    conn.Open();
                    object balanceObj = checkBalanceCmd.ExecuteScalar();
                    conn.Close();

                    if (balanceObj == null)
                    {
                        lblMessage.Text = "Account not found.";
                        lblMessage.Style["color"] = "red";
                        return;
                    }

                    decimal currentBalance = (decimal)balanceObj;

                    if (currentBalance < withdrawAmount)
                    {
                        lblMessage.Text = "Insufficient balance.";
                        lblMessage.Style["color"] = "red";
                        return;
                    }

                    string updateQuery = "UPDATE Customers SET InitialBalance = InitialBalance - @WithdrawAmount WHERE AccountNumber = @AccountNumber";
                    SqlCommand cmd = new SqlCommand(updateQuery, conn);
                    cmd.Parameters.AddWithValue("@WithdrawAmount", withdrawAmount);
                    cmd.Parameters.AddWithValue("@AccountNumber", accountNumber);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Amount withdrawn successfully.";
                        lblMessage.Style["color"] = "lightgreen";
                    }
                    else
                    {
                        lblMessage.Text = "Account not found. Withdrawal failed.";
                        lblMessage.Style["color"] = "red";
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "An error occurred: " + ex.Message;
                    lblMessage.Style["color"] = "red";
                }
            }
        }
    }
}