using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class NewVisaRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            try
            {
                con.Open();

                // Check if EmployeeID exists in employeefullinfo table
                string checkQuery = "SELECT COUNT(*) FROM employeefullinfo WHERE EmployeeID = " + TextBoxEmployeeID.Text;
                SqlCommand checkCmd = new SqlCommand(checkQuery, con);
                int count = (int)checkCmd.ExecuteScalar();

                if (count > 0)
                {
                    // EmployeeID exists, proceed with the insertion
                    string query = "INSERT INTO VisaStatus (EmployeeID, VisaType, VisaExpiry, RenewalRequested) " +
                                   "VALUES (" + TextBoxEmployeeID.Text + ", '" + TextBoxVisaType.Text + "', '" + TextBoxVisaExpiry.Text + "', '" + DropDownListRenewalRequested.SelectedValue + "')";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "New visa request submitted successfully.";
                }
                else
                {
                    // EmployeeID does not exist
                    lblMessage.Text = "EmployeeID not found.";
                }
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