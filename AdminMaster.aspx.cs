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
    public partial class AdminMasterPage1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
                ShowGrid();
            
        }

        private void ShowGrid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from tblProducts A INNER JOIN tblCategory B on A.PCategoryID = B.CatID ", con);
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = 1;
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
            int PID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string PName = (row.FindControl("TextBox1") as TextBox).Text;
            string PPrice = (row.FindControl("TextBox2") as TextBox).Text;
            string PSelPrice = (row.FindControl("TextBox3") as TextBox).Text;
            string PDescription = (row.FindControl("TextBox5") as TextBox).Text;
            string PProductDetails = (row.FindControl("TextBox6") as TextBox).Text;
            string FreeDelivery = (row.FindControl("TextBox7") as TextBox).Text;
            string COD = (row.FindControl("TextBox8") as TextBox).Text;

            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con2.Open();
            SqlCommand cmd1 = new SqlCommand("UPDATE tblProducts SET PName=@1, PPrice=@2, PSelPrice=@3, PDescription=@4, PProductDetails=@5, FreeDelivery=@6, COD=@7 WHERE PID=@PID", con2);
            cmd1.Parameters.AddWithValue("@1", PName);
            cmd1.Parameters.AddWithValue("@2", PPrice);
            cmd1.Parameters.AddWithValue("@3", PSelPrice);
            cmd1.Parameters.AddWithValue("@4", PDescription);
            cmd1.Parameters.AddWithValue("@5", PProductDetails);
            cmd1.Parameters.AddWithValue("@6", FreeDelivery);
            cmd1.Parameters.AddWithValue("@7", COD);
            cmd1.Parameters.AddWithValue("@PID", PID);
            cmd1.ExecuteNonQuery();
            con2.Close();
            Response.Write("<script> alert('Product Updated Successfully'); </script>");
            GridView1.EditIndex = -1;
            ShowGrid();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con3.Open();
            SqlCommand cmd3 = new SqlCommand("Delete from tblProducts where PID=@1", con3);
            cmd3.Parameters.AddWithValue("@1", CID);
            cmd3.ExecuteNonQuery();
            con3.Close();
            Response.Write("<script> alert('Product Deleted Successfully'); </script>");
            ShowGrid();
        }

       
    }
}