using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userid = txtUserId.Text;
            string password = txtPassword.Text;
            SqlConnection con = new SqlConnection("uid=sa;password=manager@123;database=EVisa;server=C927QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from employeeinfo where userid='"+ userid +"' and password ='" + password + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("EmployeePage.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }
    }
}