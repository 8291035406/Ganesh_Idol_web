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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Insert into tbluser(Username,Firstname,Lastname,Email,Gender,ContactNo,Address,Password,Usertype) Values('" + txtUsername.Text + "','"+txtFname.Text + "','"+ txtLname.Text + "','"+ txtEmail.Text + "', '"+ DropDownList1.SelectedValue +"','" + txtphn.Text + "','" + txtAddress.Text + "','"+ txtPass.Text + "','User')", con);
                  
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registered Sucessfully'); </script>");
                    clr();
                    con.Close();
                    lblmsg.Text = "Registered Sucessfully";
                    lblmsg.ForeColor = System.Drawing.Color.Green;
                }
                //Response.Redirect("~/SignIn.aspx"); 
            }
            else
            {
               Response.Write("<script> alert('Registered Failed'); </script>");
                lblmsg.Text = "All feilds are mandatory";
                lblmsg.ForeColor = System.Drawing.Color.Red;

             }

            
       }
        
        private bool isformvalid()
       {
            if (txtUsername.Text == "")
            {
                Response.Write("<script> alert('Enter UserName');  </script>");
                txtUsername.Focus();

                return false;
            }
            else if (txtFname.Text == "")
            {
                Response.Write("<script> alert('Enter First Name');  </script>");
                txtFname.Focus();
                return false;
            }
            else if (txtLname.Text == "")
            {
                Response.Write("<script> alert('Enter LastName');  </script>");
                txtLname.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Enter email');  </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtAddress.Text == "")
            {
                Response.Write("<script> alert('Enter Addresss');  </script>");
                txtAddress.Focus();
                return false;
            }

            else if (txtphn.Text == "")
            {
                Response.Write("<script> alert('Enter Contact Number');  </script>");
                txtphn.Focus();
                return false;
            }
            else if (txtPass.Text == "")
            {
                Response.Write("<script> alert('Enter Password');  </script>");
                txtPass.Focus();
                return false;
            }
            else if (txtCPass.Text =="")
            {
                Response.Write("<script> alert('enter Confirm Password');  </script>");
                txtCPass.Focus();
                return false;
            }

            return true;
        }

        private void clr()
        {
            txtUsername.Text = string.Empty;
            txtFname.Text = string.Empty;
            txtLname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtphn.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtCPass.Text = string.Empty;
        }
    }
}