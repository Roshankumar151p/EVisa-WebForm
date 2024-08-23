using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class EmployeeChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE employeeinfo SET password = '" + TextBox2.Text + "' WHERE userid = '" + TextBox1.Text + "'", con);
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected > 0){
                    lblMessage.Text = "1 record updated.";
                }

                else {
                    lblMessage.Text = "No record found.";
                }
            }
            catch (Exception ex){
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
            finally{
                con.Close();
            }
        }
    }
}