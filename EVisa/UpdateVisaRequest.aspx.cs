using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class UpdateVisaRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonFetch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            try
            {
                con.Open();

                // Fetch the visa details based on VisaID
                string query = "SELECT EmployeeID, VisaType, VisaExpiry, RenewalRequested FROM VisaStatus WHERE VisaID = " + TextBoxVisaID.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    // Populate the fields with the fetched data
                    TextBoxEmployeeID.Text = reader["EmployeeID"].ToString();
                    TextBoxVisaType.Text = reader["VisaType"].ToString();
                    TextBoxVisaExpiry.Text = Convert.ToDateTime(reader["VisaExpiry"]).ToString("yyyy-MM-dd");
                    DropDownListRenewalRequested.SelectedValue = reader["RenewalRequested"].ToString();

                    // Show the update panel
                    PanelDetails.Visible = true;
                }
                else
                {
                    // VisaID not found
                    lblMessage.Text = "VisaID not found.";
                }

                reader.Close();
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

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS");
            try
            {
                con.Open();

                // Update the visa details based on VisaID
                string query = "UPDATE VisaStatus SET " +
                               "VisaType = '" + TextBoxVisaType.Text + "', " +
                               "VisaExpiry = '" + TextBoxVisaExpiry.Text + "', " +
                               "RenewalRequested = '" + DropDownListRenewalRequested.SelectedValue + "' " +
                               "WHERE VisaID = " + TextBoxVisaID.Text;

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Visa request updated successfully.";
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