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
    public partial class ApplicantReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindApplicantReportData();
            }
        }

        private void BindApplicantReportData()
        {
            string connectionString = "uid=sa; password=manager@123; database=Evisa; server=C927QV3\\SQLEXPRESS";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT ReportID, EmployeeID, ReportDate, Status FROM ApplicantReport";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
        }
    }
}