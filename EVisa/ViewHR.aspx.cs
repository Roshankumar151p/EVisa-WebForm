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
    public partial class ViewHR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string hrId = TextBoxHRID.Text.Trim();

            if (string.IsNullOrEmpty(hrId))
            {
                lblMessage.Text = "Please enter an HR ID.";
                return;
            }

            string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";
            string query = "SELECT HRID, username, role, manager, HireDate, Salary, Address, Email FROM Hrfullinfo WHERE HRID = @HRID";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@HRID", hrId);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    try
                    {
                        con.Open();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            GridViewHR.DataSource = dt;
                            GridViewHR.DataBind();
                            panelGridView.Visible = true;
                            lblMessage.Text = string.Empty;
                        }
                        else
                        {
                            lblMessage.Text = "No HR found with the provided ID.";
                            panelGridView.Visible = false;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "An error occurred: " + ex.Message;
                    }
        }   }   }
    }
}