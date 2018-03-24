using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace Library1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAuthorNameSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spFindAuthor", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@AuthorName", txtAuthorName.Text + "%");
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            catch (Exception)
            {

                throw;
            }
            txtAuthorName.Text = String.Empty;
        }

        protected void btnAddNewAuthor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AuthorManagement/AuthorAdding.aspx");
        }

        protected void btnUpdateAuthor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AuthorManagement/AuthorUpdate.aspx");
        }
    }
}