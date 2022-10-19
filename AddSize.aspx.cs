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
    public partial class AddSize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowGrid();
                BindCategory();
                //BindRepeaterSizes();
                
            }
        }

        private void ShowGrid()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("select A.*,B.* from tblCategory A inner join tblSizes B on B.CategoryID = A.CatID", con1);
            DataTable dt1 = new DataTable();
            sda.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count !=0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select", "0"));
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Insert into tblSizes(Size,CategoryID) Values('" + txtSize.Text + "','" + ddlCategory.SelectedItem.Value + "')", con);
                    cmd.ExecuteNonQuery();


                    Response.Write("<script> alert('Size added Successfully'); </script>");
                    txtSize.Text = string.Empty;
                    ddlCategory.SelectedIndex = 0;

                    con.Close();
                    ddlCategory.ClearSelection();
                    ddlCategory.Items.FindByValue("0").Selected = true;

                    txtSize.Focus();



                }
                ShowGrid();
            }
            else
            {
                Response.Write("<script> alert('Size  Failed to add'); </script>");

            }


        }

        private bool isformvalid()
        {
            if (txtSize.Text == "")
            {
                Response.Write("<script> alert('Enter Size'); </script>");
                txtSize.Focus();
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
            int SID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con3.Open();
            SqlCommand cmd3 = new SqlCommand("Delete from tblSizes where SizeID=@1", con3);
            cmd3.Parameters.AddWithValue("@1", SID);
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
            int SID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Size = (row.FindControl("TextBox1") as TextBox).Text;
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString);
            con2.Open();
            SqlCommand cmd1 = new SqlCommand("Update tblSizes set Size=@1 where SizeID=@2", con2);
            cmd1.Parameters.AddWithValue("@1", Size);
            cmd1.Parameters.AddWithValue("@2", SID);
            cmd1.ExecuteNonQuery();
            con2.Close();
            Response.Write("<script> alert('Size Updated Successfully'); </script>");
            GridView1.EditIndex = -1;
            ShowGrid();

        }
    }
}
