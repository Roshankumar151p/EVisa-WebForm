using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class ViewEmployee1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panelGridView.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string userId = TextBoxUserID.Text.Trim();

            if (string.IsNullOrEmpty(userId))
            {
                lblMessage.Text = "Please enter a User ID.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                panelGridView.Visible = false;
                return;
            }

            string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
            string query = "SELECT * FROM employeefullinfo WHERE userid = @UserId";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@UserId", userId);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridViewEmployee.DataSource = dt;
                        GridViewEmployee.DataBind();
                        lblMessage.Text = string.Empty;
                        panelGridView.Visible = true;
                    }
                    else
                    {
                        lblMessage.Text = "No employee found with the provided User ID.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        panelGridView.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "An error occurred: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    panelGridView.Visible = false;
                }
            }
        }
    }
}