using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;    
using System.Configuration;
using System.Data;

namespace Library1
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUpdateComplate.Text = String.Empty;
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            txtAuthorSearch.Focus();
        }

        protected void btnAuthorSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spFindAuthor", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@AuthorName", txtAuthorSearch.Text + "%");
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {
                        lblAuthorID.Text = dr["AuthorID"].ToString();
                        txtAuthorSearch.Text = dr["AuthorName"].ToString();
                        txtAuthorDate.Text = dr["YearOfBirth"].ToString();
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
            if (e.NextStepIndex == 1)
            {
                lblAuthorIDSet.Text = lblAuthorID.Text;
                lblAuthorName.Text = txtAuthorSearch.Text;
                lblAuthorDate.Text = txtAuthorDate.Text;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spAuthorUpdate", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@AuthorID", lblAuthorIDSet.Text);
                    cmd.Parameters.AddWithValue("@AuthorName", lblAuthorName.Text);
                    cmd.Parameters.AddWithValue("@AuthorDate", lblAuthorDate.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblUpdateComplate.ForeColor = System.Drawing.Color.Green;
                    lblUpdateComplate.Text = "Update Successful";
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}