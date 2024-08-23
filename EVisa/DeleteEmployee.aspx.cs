using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace EVisa
{
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string userId = TextBox1.Text.Trim();

            if (!string.IsNullOrEmpty(userId))
            {
                // Connection string
                string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    // Query to check if the UserID exists
                    string checkUserQuery = "SELECT COUNT(*) FROM employeefullinfo WHERE UserID = '" + userId + "'";

                    using (SqlCommand checkCmd = new SqlCommand(checkUserQuery, conn))
                    {
                        conn.Open();
                        int userExists = (int)checkCmd.ExecuteScalar();
                        conn.Close();

                        if (userExists > 0)
                        {
                            // If the user exists, proceed with deletion

                            // Delete login details first
                            string deleteLoginQuery = "DELETE FROM employeeinfo WHERE UserID = '" + userId + "'";

                            using (SqlCommand deleteCmd = new SqlCommand(deleteLoginQuery, conn))
                            {
                                conn.Open();
                                deleteCmd.ExecuteNonQuery();
                                conn.Close();
                            }

                            // Delete employee details
                            string deleteEmployeeQuery = "DELETE FROM employeefullinfo WHERE UserID = '" + userId + "'";

                            using (SqlCommand deleteCmd = new SqlCommand(deleteEmployeeQuery, conn))
                            {
                                conn.Open();
                                deleteCmd.ExecuteNonQuery();
                                conn.Close();
                            }

                            lblMessage.Text = "Employee record deleted successfully.";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            // If the user does not exist, show an error message
                            lblMessage.Text = "No such record exists.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
            else
            {
                lblMessage.Text = "Please enter a valid User ID.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageEmployee.aspx");
        }
    }
}
