using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            SqlConnection con = new SqlConnection("uid=sa;password=manager@123;database=EVisa;server=C927QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from admininfo where username='"+username+"' and password ='"+password+"'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("AdminPage.aspx");
            }
            else {
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidLogin", "showAlert('Invalid username or password.');", true);
                lblMessage.Text = "Invalid username or password.";
            }
            
        }
    }
}