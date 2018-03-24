using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntakeBook_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/UserManagement/UserBookOccupation.aspx");
        }

        protected void btnReturnBook_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/UserManagement/UserBookReturning.aspx");
        }
    }
}