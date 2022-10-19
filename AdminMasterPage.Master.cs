using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    lblsuccess.Text = "Login Successful, Welcome Admin " + Session["Username"].ToString();
                }
                else
                {
                    Response.Redirect("~/SignIn.aspx");
                }
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Session.Abandon();
            Response.Cache.SetExpires(DateTime.Now.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            try
            {
                Session.Abandon();
                FormsAuthentication.SignOut();
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Buffer = true;
                Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
                Response.Expires = -1000;
                Response.CacheControl = "no-cache";
                Response.Redirect("SignIn.aspx", true);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Redirect("~/SignIn.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddProduct.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddSize.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCategory.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminMaster.aspx");

        }

        protected void Btnfeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FeedbackAndUser.aspx");

        }
    }
}