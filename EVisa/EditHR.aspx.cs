using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class EditHR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any initialization code can go here
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string hrId = TextBoxHRID.Text.Trim();

            if (!string.IsNullOrEmpty(hrId))
            {
                string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
                string query = "SELECT * FROM Hrfullinfo WHERE HRID = '" + hrId + "'";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        TextBoxHRName.Text = reader["username"].ToString();
                        TextBoxHRRole.Text = reader["role"].ToString();
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
                        lblMessage.Text = "HR not found.";
                        panelEditForm.Visible = false;
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string hrId = TextBoxHRID.Text.Trim();
            string username = TextBoxHRName.Text.Trim();
            string role = TextBoxHRRole.Text.Trim();
            string manager = TextBoxManager.Text.Trim();
            string hireDate = Convert.ToDateTime(TextBoxHireDate.Text).ToString("yyyy-MM-dd");
            string salary = TextBoxSalary.Text.Trim();
            string address = TextBoxAddress.Text.Trim();
            string email = TextBoxEmail.Text.Trim();

            if (!string.IsNullOrEmpty(hrId))
            {
                string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
                string query = "UPDATE Hrfullinfo SET username = '" + username + "', role = '" + role + "', manager = '" + manager + "', hiredate = '" + hireDate + "', salary = " + salary + ", address = '" + address + "', email = '" + email + "' WHERE HRID = '" + hrId + "'";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "HR details updated successfully.";
                    }
                    else
                    {
                        lblMessage.Text = "Error updating HR details.";
                    }
                }
            }
        }
    }
}
