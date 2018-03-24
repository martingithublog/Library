using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Library1
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblValidateStep1.Text = String.Empty;
            lblValidateStep2.Text = String.Empty;
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Wizard1.ActiveStepIndex == 0)
            {
                txtReturningBook.Focus();
            }
            else if (Wizard1.ActiveStepIndex == 1)
            {
                txtUserID.Focus();
            }
        }


        protected void btnFindBook_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spFindBookExtra", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BookName", txtReturningBook.Text + "%");
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {
                        lblBookID.Text = dr["BookID"].ToString();
                        txtReturningBook.Text = dr["BookName"].ToString();
                        txtBookISBN.Text = dr["ISBN"].ToString();
                        txtAuthorName.Text = dr["AuthorName"].ToString();
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnFindUser_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    lblUserID.Text = String.Empty;
                    txtUserName.Text = String.Empty;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spFindUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserID", txtUserID.Text);
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {
                        txtUserID.Text = dr["UserId"].ToString();
                        lblUserID.Text = dr["UserId"].ToString();
                        txtUserName.Text = dr["UserName"].ToString();
                    }
                }
            }
            catch (Exception)
            {

                lblValidateStep2.Text = "Users ID Conteins Only Numbers! Please Make Sure You Typed The ID Correctly";
            }
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (txtBookISBN.Text == String.Empty)
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Searched For The Book Before Pressing Next";
            }

            if (e.NextStepIndex == 2)
            {
                lblReturnedBook.Text = txtReturningBook.Text;
                lblISBN.Text = txtBookISBN.Text;
                LblBookAuthor.Text = txtAuthorName.Text;
                lblReturningID.Text = lblUserID.Text;
                lblReturningUser.Text = txtUserName.Text;

                int x;
                if (!int.TryParse(txtUserID.Text, out x) || x <= 0)
                {
                    e.Cancel = true;
                    lblValidateStep2.Text = "Make Sure You Found The User Before Pressing Next";
                }
                else if (lblUserID.Text == String.Empty)
                {
                    e.Cancel = true;
                    lblValidateStep2.Text = "Make Sure You Searched For The User Before Pressing Next";
                }
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spReturnBook", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserID", txtUserID.Text);
                    cmd.Parameters.AddWithValue("@BookID", lblBookID.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblUserAdded.Text = "Book Has Been Assigned  Successfully";
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}