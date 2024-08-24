using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            try
            {
                con.Open();

                // Insert into employeefullinfo table
                string query1 = "INSERT INTO employeefullinfo (employeeid, username, role, manager, hiredate, salary, address, email) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" +
                               TextBox4.Text + "', '" + TextBox5.Text + "', " + TextBox6.Text + ", '" +
                               TextBox7.Text + "', '" + TextBox8.Text + "')";

                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.ExecuteNonQuery();

                // Insert into hrinfo table
                string query2 = "INSERT INTO employeeinfo (employeeid, password) VALUES ('" + TextBox1.Text + "', '" + TextBox9.Text + "')";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();

                lblMessage.Text = "New Employee and login details are added!";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}