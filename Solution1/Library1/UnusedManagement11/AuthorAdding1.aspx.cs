using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Library1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAuthorAdded.Text = String.Empty;
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            txtAuthorName.Focus();
        }

        protected void Wizard1_NextButtonClick1(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 1)
            {
                Label1.Text = txtAuthorName.Text;
                Label2.Text = txtAuthorDate.Text;
            }
        }   

        protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spAddAuthor", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@AuthorName", Label1.Text);
                    cmd.Parameters.AddWithValue("@AuthorDate", Label2.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblAuthorAdded.ForeColor = System.Drawing.Color.Green;
                    lblAuthorAdded.Text = "Author Added Successfully";
                }
            }
            catch (Exception)
            {
                lblAuthorAdded.ForeColor = System.Drawing.Color.Red;
                lblAuthorAdded.Text = "Similar Author Has Already Existing In The Database";
            }
        }
    }
}