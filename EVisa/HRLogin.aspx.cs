using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class HRLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string HRID = txtHRID.Text;
            string password = txtPassword.Text;
            SqlConnection con = new SqlConnection("uid=sa;password=manager@123;database=EVisa;server=C927QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from hrinfo where HRID='" + HRID + "' and password ='" + password + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("HRPage.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }
    }
}