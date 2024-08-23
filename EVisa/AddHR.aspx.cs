using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class AddHR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Text = "HR";
        }

        protected void btnSaveHRDetails_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            try
            {
                con.Open();
                string query = "INSERT INTO hrfullinfo (userid, username, role, manager, hiredate, salary, address, email) " +
                               "VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" +
                               TextBox4.Text + "', '" + TextBox5.Text + "', " + TextBox6.Text + ", '" +
                               TextBox7.Text + "', '" + TextBox8.Text + "')";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                lblHRDetailsMessage.Text = "New HR is added!";
            }
            catch (Exception ex)
            {
                lblHRDetailsMessage.Text = "An error occurred: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnSaveHRCredentials_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            try
            {
                con.Open();

                // Correct the SQL INSERT command
                SqlCommand cmd = new SqlCommand("INSERT INTO hrinfo (userid, password) VALUES ('" + TextBox9.Text + "', '" + TextBox10.Text + "')", con);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    lblHRCredentialsMessage.Text = "New login details created.";
                }
                else
                {
                    lblHRCredentialsMessage.Text = "User not found!";
                }
            }
            catch (Exception ex)
            {
                lblHRCredentialsMessage.Text = "An error occurred: " + ex.Message;
            }
            finally
            {
                con.Close();
            }

        }


    }
}