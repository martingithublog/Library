using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Collections.Specialized.NameValueCollection nameValueCollection = Request.Form;
            lblSuccessName.Text = nameValueCollection["txtNewUserName"];
            lblSuccessEGN.Text = nameValueCollection["txtEGN"];
            lblSuccessAddress.Text = nameValueCollection["txtAddress"];
            lblSuccessPhone.Text = nameValueCollection["txtPhone"];
            lblSuccessEmail.Text = nameValueCollection["txtEmail"];

        }

        protected void btnAddAnotherCostumer_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Response.Redirect("~/UserManagement/UserCreating.aspx");
            }
        }

      

        


      

    }
}