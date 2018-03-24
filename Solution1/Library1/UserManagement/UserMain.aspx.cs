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
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
        protected void btnGetUser_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spGetUserByName", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserName", "%" + txtGetUser.Text + "%");
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                txtGetUser.Text = String.Empty;
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnSearchBookNAme_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spFindBook", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BookName", txtSearchBookName.Text + "%");
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                txtSearchBookName.Text = String.Empty;
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnBookOccupation_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserManagement/UserBookOccupation.aspx");
        }

        protected void btnBookReturning_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserManagement/UserBookReturning.aspx");
        }

        protected void btnCreateNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserManagement/UserCreate.aspx");
        }

        protected void btnUpdateUserInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserManagement/UserUpdate.aspx");
        }
    }
}