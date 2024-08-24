using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class HRChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
            string HRId = TextBox1.Text;
            string oldPassword = TextBoxOldPassword.Text;
            string newPassword = TextBox2.Text;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // Verify old password
                    string checkPasswordQuery = "SELECT COUNT(*) FROM hrinfo WHERE hrid = '" + HRId + "' AND password = '" + oldPassword + "'";
                    using (SqlCommand checkCmd = new SqlCommand(checkPasswordQuery, con))
                    {
                        int userCount = (int)checkCmd.ExecuteScalar();

                        if (userCount == 1)
                        {
                            // Update with new password
                            string updatePasswordQuery = "UPDATE hrinfo SET password = '" + newPassword + "' WHERE hrid = '" + HRId + "'";
                            using (SqlCommand updateCmd = new SqlCommand(updatePasswordQuery, con))
                            {
                                int rowsAffected = updateCmd.ExecuteNonQuery();
                                if (rowsAffected > 0)
                                {
                                    lblMessage.Text = "Password changed successfully.";
                                    lblMessage.ForeColor = System.Drawing.Color.Green;
                                }
                                else
                                {
                                    lblMessage.Text = "No record found.";
                                    lblMessage.ForeColor = System.Drawing.Color.Red;
                                }
                            }
                        }
                        else
                        {
                            lblMessage.Text = "Old password is incorrect.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "An error occurred: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}