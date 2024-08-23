using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class HRDetails : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = Request.QueryString["userid"];
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            SqlDataAdapter da = new SqlDataAdapter("Select * from hrfullinfo where userid = '"+ userid +"'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageHR.aspx");
        }
    }
}