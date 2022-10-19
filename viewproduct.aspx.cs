using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;

namespace WebApplication2
{
    public partial class viewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Request.QueryString["PID"] != null)
            {
                if (!IsPostBack)
                {
                    BindProductimage();
                    BindProductDetail();

                }
            }
            else
            {
                Response.Redirect("~/UserHome.aspx");
            }
        }
       
        private void BindProductDetail()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblProducts where PID = '" + PID + "' ", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProductDetails.DataSource = dt;
                        rptrProductDetails.DataBind();
                    }
                }
            }
        }

        private void BindProductimage()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblProductImages where PID = '" + PID + "' ", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrImage.DataSource = dt;
                        rptrImage.DataBind();
                    }
                }
            }
        }
        protected string GetActiveImgClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";
            }
        }

        protected void rptrProductDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.Item)
            {
                string CatID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
                RadioButtonList rblsize = e.Item.FindControl("rblsize") as RadioButtonList;

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("select * from tblSizes where CategoryID = '" + CatID + "' ", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rblsize.DataSource = dt;
                            rblsize.DataTextField = "Size";
                            rblsize.DataValueField = "SizeID";
                            rblsize.DataBind();

                        }
                    }
                }

            }
        }

        protected void btnaddtocart_Click(object sender, EventArgs e)
        {
            string SelectedSize = string.Empty;
            foreach (RepeaterItem item in rptrProductDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var rbList = item.FindControl("rblSize") as RadioButtonList;
                    SelectedSize = rbList.SelectedValue;
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "";
                }
               
            }

            if (SelectedSize != "")
            {
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                if (Request.Cookies["CartPID"] != null)
                {
                    string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                    CookiePID = CookiePID + "," + PID + "-" + SelectedSize;
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = CookiePID;
                    CartProducts.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(CartProducts);
                }
                else
                {
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = PID.ToString() + "-" + SelectedSize;
                    CartProducts.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(CartProducts);
                }
                Response.Redirect("~/viewproduct.aspx?PID=" + PID);
            }
            else
            {
                foreach (RepeaterItem item in rptrProductDetails.Items)
                {
                    if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                    {
                        var lblError = item.FindControl("lblError") as Label;
                        lblError.Text = "Please select a size";
                    }
                }

            }
            
        }
        protected override void InitializeCulture()
        {
            CultureInfo ci = new CultureInfo("en-IN");
            ci.NumberFormat.CurrencySymbol = "₹";
            Thread.CurrentThread.CurrentCulture = ci;

            base.InitializeCulture();
        }
    }
}
