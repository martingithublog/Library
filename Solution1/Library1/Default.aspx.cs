using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUserManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserManagement/UserMain.aspx");
        }

        protected void btnBookManagmement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookManagement/BookMain.aspx");
        }

        protected void btnAuthorManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AuthorManagement/AuthorMain.aspx");
        }
    }
}