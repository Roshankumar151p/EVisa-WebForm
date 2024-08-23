using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EVisa
{
    public partial class ManageEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnViewHR_Click(object sender, EventArgs e)
        {
            string url;
            url = "HRDetails.aspx?userid=" + TextBox1.Text;
            Response.Redirect(url);
        }

        protected void btnInsertHR_Click(object sender, EventArgs e)
        {

        }

        protected void btnDeleteHR_Click(object sender, EventArgs e)
        {

        }
    }
}