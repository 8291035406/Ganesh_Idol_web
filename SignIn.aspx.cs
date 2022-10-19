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
    public partial class SignIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if(Request.Cookies["Username"] !=null && Request.Cookies["Password"] !=null )
                {
                    txtUsername.Text = Request.Cookies["Username"].Value;

                    txtPass.Text = Request.Cookies["Username"].Value;
                    CheckBox1.Checked = true;

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("Select * from tbluser where Username=@username and Password=@password", con);
                cmd.Parameters.AddWithValue("@username",txtUsername.Text);
                cmd.Parameters.AddWithValue("@password",txtPass.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count !=0)
                {
                    Session["USERID"] = dt.Rows[0]["Uid"].ToString();
                    Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["Username"].Value = txtUsername.Text;
                        Response.Cookies["Password"].Value = txtPass.Text;

                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(5);

                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(5);

                    }
                    else
                    {
                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);

                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string Usertype;
                    Usertype = dt.Rows[0][9].ToString().Trim();

                    if(Usertype == "User")
                    {
                        Session["Username"] = txtUsername.Text;
                        Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                        Session["FirstName"] = dt.Rows[0]["Firstname"].ToString();
                        Session["LastName"] = dt.Rows[0]["Lastname"].ToString();
                        Session["LoginType"] = "User";

                        if (Request.QueryString["rurl"]!= null)
                        {
                            if(Request.QueryString["rurl"] == "cart")
                            {
                                Response.Redirect("~/Cart.aspx");
                            }
                            if (Request.QueryString["rurl"] == "PID")
                            {
                                string myPID = Session["ReturnPID"].ToString();
                                Response.Redirect("viewproduct.aspx?PID=" + myPID + "");
                            }
                        }
                        else
                        {
                            Response.Redirect("~/UserHome.aspx?UserLogin=YES");

                        }

                    }
                    if (Usertype == "Admin")
                    {
                        Session["Username"] = txtUsername.Text;
                        Session["LoginType"] = "Admin";
                        Response.Redirect("~/AdminMaster.aspx");
                    }

                }
                else
                {
                    lblError.Text = "Invalid Username and Password";
                }
                // Response.Write("<script> alert('login Sucessfully'); </script>");
                clr();
                con.Close();
               // lblmsg.Text = "Registered Sucessfully";
              //  lblmsg.ForeColor = System.Drawing.Color.Green;
            }
        }
        private void clr()
        {
            txtUsername.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtUsername.Focus();
        }


    }
}