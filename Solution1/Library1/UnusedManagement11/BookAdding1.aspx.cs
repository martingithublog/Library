using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Library1
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblValidateStep1.Text = String.Empty;
                lblAuthorAdded.Text = String.Empty;
            }
            else
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("Select AuthorID, AuthorName from tblAuthor", con);
                    con.Open();
                    ddlBookAuthor.DataSource = cmd.ExecuteReader();
                    ddlBookAuthor.DataTextField = "AuthorName";
                    ddlBookAuthor.DataValueField = "AuthorID";
                    ddlBookAuthor.DataBind();
                }
            }
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            txtNewBookName.Focus();
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            long parsedValue;
            int x;
            if (txtBookISBN.Text.Length < 10 | !long.TryParse(txtBookISBN.Text, out parsedValue))
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Typed The ISBN Correctly";
            }
            else if (txtBookInStock.Text == String.Empty || !int.TryParse(txtBookInStock.Text, out x) || x < 0)
            {
                e.Cancel = true;
                lblValidateStep1.Text = "Make Sure You Typed The Number Of Books In Stock Correctly";
            }

            if (e.NextStepIndex == 1)
            {
                lblBookName.Text = txtNewBookName.Text;
                lblBookAuthor.Text = ddlBookAuthor.Text;
                lblBookISBN.Text = txtBookISBN.Text;
                lblBookYEar.Text = txtBookYear.Text;
                lblBookInStock.Text = txtBookInStock.Text;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spAddNewBook", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@newBookName", lblBookName.Text);
                    cmd.Parameters.AddWithValue("@authorID", ddlBookAuthor.Text);
                    cmd.Parameters.AddWithValue("@NewBookISBN", lblBookISBN.Text);
                    cmd.Parameters.AddWithValue("@yearOfPublishing", lblBookYEar.Text);
                    cmd.Parameters.AddWithValue("@avaiableQuantity", lblBookInStock.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblAuthorAdded.ForeColor  = System.Drawing.Color.Green;
                    lblAuthorAdded.Text = "Author Added Successfully";
                }
            }
            catch (Exception)
            {
                lblAuthorAdded.ForeColor  = System.Drawing.Color.Red;
                lblAuthorAdded.Text = "Similar Book Already Existing In The Database ";
            }
          
           
        }
    }
}