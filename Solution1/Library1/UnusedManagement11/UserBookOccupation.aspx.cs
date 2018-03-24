using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAssignBook_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblAssigningSuccessful.Text = "Assigning Successful";
            }
        }

        protected void btnCancelAssigning_Click(object sender, EventArgs e)
        {   if (IsPostBack)
            {
                Response.Redirect("~/UserManagement/UserAction.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}