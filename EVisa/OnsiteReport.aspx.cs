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
    public partial class OnsiteReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOnsiteDetails();
            }
        }

        private void BindOnsiteDetails()
        {
            // Replace with your actual connection string
            string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Query without parameters
                string query = "SELECT * FROM OnsiteReport";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridViewOnsiteDetails.DataSource = dt;
                GridViewOnsiteDetails.DataBind();
            }
        }
    }
}