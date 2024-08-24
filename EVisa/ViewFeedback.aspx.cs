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
    public partial class ViewFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFeedbackGrid();
            }
        }
        private void BindFeedbackGrid()
        {
            // Define the connection string
            string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";

            // Define the query to retrieve feedback data
            string query = "SELECT employeeid, hrid, username, email, subject, feedback FROM feedback";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    // Open the connection
                    conn.Open();

                    // Create a data adapter to fill the dataset
                    SqlDataAdapter da = new SqlDataAdapter(query, conn);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Feedback");

                    // Bind the dataset to the GridView
                    gvFeedback.DataSource = ds.Tables["Feedback"];
                    gvFeedback.DataBind();
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    lblTitle.Text = "An error occurred: " + ex.Message;
                    lblTitle.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void gvFeedback_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvFeedback.PageIndex = e.NewPageIndex;
            BindFeedbackGrid();
        }
    } }