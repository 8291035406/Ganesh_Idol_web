using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class FeedbackAndUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowGrid();
            ShowGridview();
        }

        private void ShowGridview()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from tbluser", con1);
            DataTable dt1 = new DataTable();
            sda.Fill(dt1);
            GridView2.DataSource = dt1;
            GridView2.DataBind();

        }

        private void ShowGrid()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from tblfeedback", con1);
            DataTable dt1 = new DataTable();
            sda.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int FID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("Delete from tblfeedback where id=@1", con1);
            cmd1.Parameters.AddWithValue("@1", FID);
            cmd1.ExecuteNonQuery();
            con1.Close();
            Response.Write("<script> alert('FeedBack Deleted Successfully'); </script>");
            ShowGrid();

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView2.Rows[e.RowIndex];
            int UID = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Values[0]);
            string Usertype = (row.FindControl("TextBox1") as TextBox).Text;
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con2.Open();
            SqlCommand cmd1 = new SqlCommand("Update tbluser set Usertype=@2 where Uid=@1", con2);
            cmd1.Parameters.AddWithValue("@2", Usertype);
            cmd1.Parameters.AddWithValue("@1", UID);
            cmd1.ExecuteNonQuery();
            con2.Close();
            Response.Write("<script> alert('User Updated Successfully'); </script>");
            GridView2.EditIndex = -1;
            ShowGridview();

        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            ShowGridview();

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int UID = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Values[0]);
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("Delete from tbluser where Uid=@1", con1);
            cmd1.Parameters.AddWithValue("@1", UID);
            cmd1.ExecuteNonQuery();
            con1.Close();
            Response.Write("<script> alert('User Deleted Successfully'); </script>");
            ShowGridview();

        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            ShowGridview();

        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            ShowGridview();

        }
    }
}