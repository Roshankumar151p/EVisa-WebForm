﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class EmployeeChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
            string userId = TextBox1.Text.Trim();
            string oldPassword = TextBoxOldPassword.Text.Trim();
            string newPassword = TextBox2.Text.Trim();

            // Ensure inputs are sanitized to prevent SQL injection
            userId = userId.Replace("'", "''");
            oldPassword = oldPassword.Replace("'", "''");
            newPassword = newPassword.Replace("'", "''");

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // Verify old password
                    string checkPasswordQuery = $"SELECT COUNT(*) FROM employeeinfo WHERE userid = '{userId}' AND password = '{oldPassword}'";
                    using (SqlCommand checkCmd = new SqlCommand(checkPasswordQuery, con))
                    {
                        int userCount = (int)checkCmd.ExecuteScalar();

                        if (userCount == 1)
                        {
                            // Update with new password
                            string updatePasswordQuery = $"UPDATE employeeinfo SET password = '{newPassword}' WHERE userid = '{userId}'";
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