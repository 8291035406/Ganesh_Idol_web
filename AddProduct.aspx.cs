using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace WebApplication2
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategory();
            }

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
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select", "0"));
                }
            }
        }





        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("sp_insertProduct", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PName", txtProductName.Text);
                    cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@PSelPrice", txtSellingPrice.Text);
                    cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@PProductDetails", txtPDetails.Text);
                    if (cbFD.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());

                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());

                    }

                    if (cbCOD.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@COD", 1.ToString());

                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@COD", 0.ToString());

                    }
                    con.Open();
                    Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

                    //insert size quantity

                    for (int i = 0; i < cblsize.Items.Count; i++)
                    {
                        if (cblsize.Items[i].Selected == true)
                        {
                            Int64 SizeID = Convert.ToInt64(cblsize.Items[i].Value);
                            int Quantity = Convert.ToInt32(txtQuantity.Text);
                            SqlCommand cmd2 = new SqlCommand("insert into tblProductQuantity Values('" + PID + "','" + SizeID + "','" + Quantity + "')", con);
                            cmd2.ExecuteNonQuery();
                        }
                    }
                    //1stinsert and upload img

                    if (fuImg01.HasFile)
                    {
                        string SavePath = Server.MapPath("~/Images/productimg/") + PID;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);

                        }
                        string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                        fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "01" + Extention);

                        SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                        cmd3.ExecuteNonQuery();
                    }
                    //2ndinsert and upload img

                    if (fuImg02.HasFile)
                    {
                        string SavePath = Server.MapPath("~/Images/productimg/") + PID;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);

                        }
                        string Extention = Path.GetExtension(fuImg02.PostedFile.FileName);
                        fuImg02.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "02" + Extention);

                        SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString().Trim() + "02" + "','" + Extention + "')", con);
                        cmd3.ExecuteNonQuery();
                    }
                    //3rdinsert and upload img

                    if (fuImg03.HasFile)
                    {
                        string SavePath = Server.MapPath("~/Images/productimg/") + PID;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);

                        }
                        string Extention = Path.GetExtension(fuImg03.PostedFile.FileName);
                        fuImg03.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "03" + Extention);

                        SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString().Trim() + "03" + "','" + Extention + "')", con);
                        cmd3.ExecuteNonQuery();
                         Response.Write("<script> alert('Product added Successfully'); </script>");
                        clr();

                        
                    }
                }
        }
            else
            {
                Response.Write("<script> alert('Product Failed to add'); </script>");

            }

}

        private void clr()
        {
            txtProductName.Text = string.Empty;
            txtPrice.Text = string.Empty;
            txtSellingPrice.Text = string.Empty;
            txtDescription.Text = string.Empty;
            txtPDetails.Text = string.Empty;
            txtQuantity.Text = string.Empty;
            ddlCategory.SelectedIndex = 0;
            cbCOD.Checked = false;
            cbFD.Checked = false;
            cblsize.SelectedIndex = 0;
        }

        private bool isformvalid()
        {
            if (txtProductName.Text == "")
            {
                Response.Write("<script> alert('Enter Product Name');  </script>");
                txtProductName.Focus();

                return false;
            }
            else if (txtPrice.Text == "")
            {
                Response.Write("<script> alert('Enter Product Price');  </script>");
                txtPrice.Focus();
                return false;
            }
            else if (txtSellingPrice.Text == "")
            {
                Response.Write("<script> alert('EnterProduct Selling Price');  </script>");
                txtSellingPrice.Focus();
                return false;
            }
            else if (txtQuantity.Text == "")
            {
                Response.Write("<script> alert('Enter Product Quantity');  </script>");
                txtQuantity.Focus();
                return false;
            }
            else if (txtDescription.Text == "")
            {
                Response.Write("<script> alert('Enter Product Description');  </script>");
                txtDescription.Focus();
                return false;
            }

            else if (txtPDetails.Text == "")
            {
                Response.Write("<script> alert('Enter Product Details');  </script>");
                txtPDetails.Focus();
                return false;
            }
            return true;
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSizes where CategoryID='" +ddlCategory.SelectedItem.Value +"'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    cblsize.DataSource = dt;
                    cblsize.DataTextField = "Size";
                    cblsize.DataValueField = "SizeID";
                    cblsize.DataBind();
                }
            }
        }

      
    }
}
   