using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class DeleteHR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string hrId = TextBoxHRID.Text.Trim();

            if (!string.IsNullOrEmpty(hrId))
            {
                // Connection string
                string connectionString = "uid=sa; password=manager@123; database=EVisa; server=C927QV3\\SQLEXPRESS";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    try
                    {
                        conn.Open();

                        // Query to check if the HRID exists in Hrfullinfo
                        string checkHRQuery = "SELECT COUNT(*) FROM Hrfullinfo WHERE HRID = '" + hrId + "'";

                        using (SqlCommand checkCmd = new SqlCommand(checkHRQuery, conn))
                        {
                            int hrExists = (int)checkCmd.ExecuteScalar();

                            if (hrExists > 0)
                            {
                                // Delete from hrinfo first
                                string deleteHRInfoQuery = "DELETE FROM hrinfo WHERE HRID = '" + hrId + "'";
                                using (SqlCommand deleteHRInfoCmd = new SqlCommand(deleteHRInfoQuery, conn))
                                {
                                    deleteHRInfoCmd.ExecuteNonQuery();
                                }

                                // Then delete from Hrfullinfo
                                string deleteHRQuery = "DELETE FROM Hrfullinfo WHERE HRID = '" + hrId + "'";
                                using (SqlCommand deleteHRCmd = new SqlCommand(deleteHRQuery, conn))
                                {
                                    deleteHRCmd.ExecuteNonQuery();
                                }

                                lblMessage.Text = "HR record deleted successfully.";
                                lblMessage.ForeColor = System.Drawing.Color.Green;
                            }
                            else
                            {
                                // If the HR does not exist, show an error message
                                lblMessage.Text = "No such record exists.";
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        // Log or handle the exception as needed
                        lblMessage.Text = "An error occurred: " + ex.Message;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
            }
            else
            {
                lblMessage.Text = "Please enter a valid HR ID.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageHR.aspx");
        }
    }
}