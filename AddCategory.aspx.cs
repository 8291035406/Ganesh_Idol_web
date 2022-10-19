using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication2
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowGrid();
                //BindRepeaterCategory();
            }
        }

        private void ShowGrid()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from tblCategory", con1);
            DataTable dt1 = new DataTable();
            sda.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

        //private void BindRepeaterCategory()
        //{
        //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("select * from tblCategory", con))
        //        {
        //            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        //            {
        //                DataTable dt = new DataTable();
        //                sda.Fill(dt);
        //                rptrCategory.DataSource = dt;
        //                rptrCategory.DataBind();

        //            }
        //        }
        //    }


        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) Values('" + txtCategory.Text + "')", con);
                    cmd.ExecuteNonQuery();


                    Response.Write("<script> alert('Category added Successfully'); </script>");
                    txtCategory.Text = string.Empty;

                    con.Close();

                    txtCategory.Focus();


                }
                //BindRepeaterCategory();
                ShowGrid();

            }
            else
            {
                Response.Write("<script> alert('Category  Failed to add'); </script>");
                
            }
        }

        private bool isformvalid()
        {
            if (txtCategory.Text == "")
            {
                Response.Write("<script> alert('Enter Category '); </script>");
                txtCategory.Focus();
                return false;
            }
            return true;

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            ShowGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con3.Open();
            SqlCommand cmd3 = new SqlCommand("Delete from tblCategory where CatID=@1", con3);
            cmd3.Parameters.AddWithValue("@1", CID);
            cmd3.ExecuteNonQuery();
            con3.Close();
            Response.Write("<script> alert('Category Deleted Successfully'); </script>");
            ShowGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            ShowGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int CID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string CategoryName = (row.FindControl("TextBox1") as TextBox).Text;
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con2.Open();
            SqlCommand cmd1 = new SqlCommand("Update tblCategory set CatName=@1 where CatID=@2", con2);
            cmd1.Parameters.AddWithValue("@1", CategoryName);
            cmd1.Parameters.AddWithValue("@2", CID);
            cmd1.ExecuteNonQuery();
            con2.Close();
            Response.Write("<script> alert('Category Updated Successfully'); </script>");
            GridView1.EditIndex = -1;
        }
    }

}
