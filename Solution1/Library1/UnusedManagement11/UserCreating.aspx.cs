using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library1
{
    public partial class UserCreating1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUserCreating_Click(object sender, EventArgs e)
        {
        Server.Transfer("~/UserManagement/UserSuccessfulCreated.aspx");
            
        }
    
    }
}