using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class RecoverPassword : System.Web.UI.Page
    {
        string GUIDvalue;
        DataTable dt = new DataTable();

        public int Uid { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                con.Open();
                GUIDvalue = Request.QueryString["Uid"];
                if(GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand(" select * from ForgotPass where Id=@Id", con);
                    cmd.Parameters.AddWithValue("@Id",GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    Response.Redirect("~/SignIn.aspx");
                }
            }
            if (IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    txtNewCPass.Visible = true;
                    txtNewPass.Visible = true;
                    lblNewCPass.Visible = true;
                    lblNewPass.Visible = true;
                    Button1.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Your Password Reset Link is Expired or invalid.... try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Update tbluser set Password=@Password where Uid=@Uid", con);
                cmd.Parameters.AddWithValue("@Password", txtNewPass.Text );
                cmd.Parameters.AddWithValue("@Uid", Uid);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Password Reset Sucessfully'); </script>");

            }
        }
    }
}