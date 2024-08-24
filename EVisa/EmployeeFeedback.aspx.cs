using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class EmployeeFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void txtMessage_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // Query to check if the HRID exists in the Hrfullinfo table
                    string checkQuery = "SELECT HRID FROM employeefullinfo WHERE employeeID = '" + txtEmployeeID.Text + "'";

                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        object result = checkCmd.ExecuteScalar();

                        if (result != null)
                        {
                            // HRID exists, proceed with the INSERT
                            string insertQuery = "INSERT INTO feedback (employeeid, username, email, subject, feedback) " +
                                                 "VALUES ('" + txtEmployeeID.Text + "', '" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtSubject.Text + "', '" + txtMessage.Text + "')";

                            using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                            {
                                insertCmd.ExecuteNonQuery();

                                // Provide feedback to the user
                                Label1.Text = "Feedback submitted successfully!";
                                Label1.ForeColor = System.Drawing.Color.Green;
                            }
                        }
                        else
                        {
                            // HRID does not exist, display an error message
                            Label1.Text = "Incorrect EmployeeID. Please check the ID and try again.";
                            Label1.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Display error message
                    Label1.Text = "An error occurred: " + ex.Message;
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                finally
                {
                    con.Close();
                }
            }

        }
    }
}