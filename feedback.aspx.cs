using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (isformvalid())
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Insert into tblfeedback(Name,Email,Subject,Inquiry) Values('" + txtUsername.Text + "','" + txtEmail.Text + "','" + txtSub.Text + "','" + txtInq.Text + "')", con);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Thank You for Your Inquiry'); </script>");
                    clr();
                    con.Close();
                    lbl.Text = "Thank You for Your Inquiry";
                    lbl.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                Response.Write("<script> alert('feedback Failed'); </script>");
                
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
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Enter email');  </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtSub.Text == "")
            {
                Response.Write("<script> alert('Enter Subject');  </script>");
                txtSub.Focus();
                return false;
            }
            else if (txtInq.Text == "")
            {
                Response.Write("<script> alert('Enter Inquiry');  </script>");
                txtInq.Focus();
                return false;
            }
            return true;

        }

        private void clr()
        {
            txtUsername.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtSub.Text = string.Empty;
            txtInq.Text = string.Empty;
        }
    }
}
