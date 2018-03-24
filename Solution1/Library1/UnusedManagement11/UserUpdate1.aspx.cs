using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Library1
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblValidateStep1.Text = String.Empty;
            }
        }

        protected void SearchUser_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spFindUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserID", txtUpdateUserID.Text );
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {
                        lblSaveUserID.Text = txtUpdateUserID.Text;
                        txtUpdateUserName.Text = dr["UserName"].ToString();
                        txtUpdateEGN.Text = dr["UserEGN"].ToString();
                        txtUpdateAddress.Text = dr["UserAddress"].ToString();
                        txtUpdatePhone.Text = dr["UserPhoneNumber"].ToString();
                        txtUpdateEmail.Text = dr["UserEmail"].ToString();
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            long parsedValue;
            ;
            if (txtUpdateUserID.Text != lblSaveUserID.Text)
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Please Set The User ID To " + lblSaveUserID.Text;
            }
            else if (txtUpdateUserName.Text == String.Empty)
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Typed The User's Name Correctly";
            }
            else if (!long.TryParse(txtUpdateEGN.Text, out parsedValue) || txtUpdateEGN.Text.Length < 10 || txtUpdateEGN.Text.Length > 10  )
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Typed The User's EGN Correctly (10 Digits)";
            }
            else if (txtUpdateAddress.Text == String.Empty)
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Typed The User's Address Correctly";
            }
            else if (!long.TryParse(txtUpdatePhone.Text, out parsedValue))
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Typed The User's Phone Number Correctly";
            }

            if (e.NextStepIndex == 1)
            {
                lblUserID.Text = txtUpdateUserID.Text;
                lblUpdateName.Text = txtUpdateUserName.Text;
                lblUpdateEGN.Text = txtUpdateEGN.Text;
                lblUpdateAddress.Text = txtUpdateAddress.Text;
                lblUpdatePhone.Text = txtUpdatePhone.Text;
                lblUpdateEmail.Text = txtUpdateEmail.Text;
            }
        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spUserUpdate", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserID", lblUserID.Text);
                    cmd.Parameters.AddWithValue("@UpdateUserName", lblUpdateName.Text);
                    cmd.Parameters.AddWithValue("@UpdateUserEGN", lblUpdateEGN.Text);
                    cmd.Parameters.AddWithValue("@UpdateUserAddress", lblUpdateAddress.Text);
                    cmd.Parameters.AddWithValue("@UpdateUserPhone", lblUpdatePhone.Text);
                    cmd.Parameters.AddWithValue("@UpdateUserEmail", lblUpdateEmail.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblUserAdded.Text = "The User Has Been Successfully Updated";
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

       
    }
}