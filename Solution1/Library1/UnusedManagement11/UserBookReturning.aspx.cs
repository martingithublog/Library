using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library1
{
    public partial class UserBookReturning : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturnBook_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblReturningSuccessful.Text = "Book Has Been Returned Successfully";
            }
        }

        protected void btnCancelReturning_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Response.Redirect("~/UserManagement/UserAction.aspx");
                
            }
        }
    }
}