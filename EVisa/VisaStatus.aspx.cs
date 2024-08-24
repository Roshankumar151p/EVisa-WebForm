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
    public partial class VisaStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindVisaStatusData();
            }
        }

        private void BindVisaStatusData()
        {
            string connectionString = "uid=sa; password=manager@123; database=Evisa; server=C927QV3\\SQLEXPRESS";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT VisaID, EmployeeID, VisaType, VisaExpiry, RenewalRequested FROM VisaStatus";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
        }
    }
}