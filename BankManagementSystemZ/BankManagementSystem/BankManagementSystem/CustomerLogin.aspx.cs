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
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnNext.Visible = false;
            btnBack.Visible = false;
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            string accountNumber = txtAccountNumber.Text.Trim(); 
            string password = txtPassword.Text.Trim(); 

            if (string.IsNullOrEmpty(accountNumber) || string.IsNullOrEmpty(password))
            {
                return;
            }

            
            Session["AccountNumber"] = accountNumber;

           
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Customers WHERE AccountNumber = @AccountNumber AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@AccountNumber", accountNumber);
                cmd.Parameters.AddWithValue("@Password", password);

                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                conn.Close();

                if (count > 0) 
                {
                    btnNext.Visible = true; 
                }
                else 
                {
                    btnBack.Visible = true; 
                }
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("Next.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("MainPage.aspx");
        }
    }
}