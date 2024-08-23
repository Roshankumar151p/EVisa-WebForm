using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class EditEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string userID = TextBoxUserID.Text.Trim();

            if (!string.IsNullOrEmpty(userID))
            {
                // Replace with your connection string
                string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
                string query = "SELECT * FROM employeefullinfo WHERE userid = '" + userID + "'";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        TextBoxUsername.Text = reader["username"].ToString();
                        TextBoxRole.Text = reader["role"].ToString();
                        TextBoxManager.Text = reader["manager"].ToString();
                        TextBoxHireDate.Text = Convert.ToDateTime(reader["hiredate"]).ToString("yyyy-MM-dd");
                        TextBoxSalary.Text = reader["salary"].ToString();
                        TextBoxAddress.Text = reader["address"].ToString();
                        TextBoxEmail.Text = reader["email"].ToString();
                        panelEditForm.Visible = true;
                        lblMessage.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "Employee not found.";
                        panelEditForm.Visible = false;
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string userID = TextBoxUserID.Text.Trim();

            if (!string.IsNullOrEmpty(userID))
            {
                // Replace with your connection string
                string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
                string query = "UPDATE employeefullinfo SET username = '" + TextBoxUsername.Text + "', role = '" + TextBoxRole.Text + "', manager = '" + TextBoxManager.Text + "', hiredate = '" + Convert.ToDateTime(TextBoxHireDate.Text).ToString("yyyy-MM-dd") + "', salary = " + Convert.ToDecimal(TextBoxSalary.Text) + ", address = '" + TextBoxAddress.Text + "', email = '" + TextBoxEmail.Text + "' WHERE userid = '" + userID + "'";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Employee details updated successfully.";
                    }
                    else
                    {
                        lblMessage.Text = "Error updating employee details.";
                    }
                }
         
        }   }
    }
}