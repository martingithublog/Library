using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Library1
{
   
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblValidateStep1.Text = String.Empty;
            }

            if (!IsPostBack)
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
            txtUpdateBookName.Focus();
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            long parsedValue;
            int x;
            ;
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
                lblBookName.Text = txtUpdateBookName.Text;
                lblBookIDSet.Text = lblBookID.Text;
                lblBookAuthor.Text = ddlBookAuthor.Text;
                lblBookISBN.Text = txtBookISBN.Text;
                lblBookYEar.Text = txtBookYear.Text;
                lblBookInStock.Text = txtBookInStock.Text;
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
                    SqlCommand cmd = new SqlCommand("spFindBook", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BookName", txtUpdateBookName.Text + "%");
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {
                        txtUpdateBookName.Text = dr["BookName"].ToString();
                        lblBookID.Text = dr["BookID"].ToString();
                        ddlBookAuthor.Text = dr["AuthorID"].ToString();
                        txtBookISBN.Text = dr["ISBN"].ToString();
                        txtBookYear.Text = dr["YearOfPublishing"].ToString();
                        txtBookInStock.Text = dr["AvailableQuantity"].ToString();
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {

                    SqlCommand cmd = new SqlCommand("spBookUpdate", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@BookID", lblBookIDSet.Text);
                    cmd.Parameters.AddWithValue("@BookName", lblBookName.Text);
                    cmd.Parameters.AddWithValue("@AuthorID", ddlBookAuthor.Text);
                    cmd.Parameters.AddWithValue("@ISBN", lblBookISBN.Text);
                    cmd.Parameters.AddWithValue("@YearOfPublishing", lblBookYEar.Text);
                    cmd.Parameters.AddWithValue("@AvaiableQuantity", lblBookInStock.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblFinish.ForeColor = System.Drawing.Color.Green;
                    lblFinish.Text = "Book Updated Successfully";
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
    
}