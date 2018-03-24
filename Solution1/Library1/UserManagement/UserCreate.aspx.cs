using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Library1
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblValidateStep1.Text = String.Empty;
            lblUserAdded.Text = String.Empty;
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            long parsedValue;
            if (!long.TryParse(txtPhone.Text, out parsedValue))
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Typed The Phone Number Correctly";
            }

            if (e.NextStepIndex == 1)
            {
                lblSuccessName.Text = txtNewUserName.Text;
                lblSuccessName.Text = txtNewUserName.Text;
                lblSuccessEGN.Text = txtEGN.Text;
                lblSuccessAddress.Text = txtAddress.Text;
                lblSuccessPhone.Text = txtPhone.Text;
                lblSuccessEmail.Text = txtEmail.Text;
            }

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spAddUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@SuccessName", lblSuccessName.Text);
                    cmd.Parameters.AddWithValue("@SuccessEGN", lblSuccessEGN.Text);
                    cmd.Parameters.AddWithValue("@SuccessAddress", lblSuccessAddress.Text);
                    cmd.Parameters.AddWithValue("@SuccessPhone", lblSuccessPhone.Text);
                    cmd.Parameters.AddWithValue("@SuccessEmail", lblSuccessEmail.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblUserAdded.ForeColor = System.Drawing.Color.Green;
                    lblUserAdded.Text = "User Added Successfully";
                }
            }
            catch (Exception)
            {
                lblUserAdded.ForeColor = System.Drawing.Color.Red;
                lblUserAdded.Text = "User With Similar EGN Already Existing In The Database";


            }
        }
    }
}