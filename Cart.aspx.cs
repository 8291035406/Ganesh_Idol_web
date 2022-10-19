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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindProductCart();

            }

        }

        private void BindProductCart()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    h4Noitems.InnerText = "My Cart(" + CookieDataArray.Length + "items )";
                    DataTable dt = new DataTable();
                    Int64 CartTotal = 0;
                    Int64 Total = 0;

                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];
                        string SizeID = CookieDataArray[i].ToString().Split('-')[1];
                        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
                        {
                            using (SqlCommand cmd = new SqlCommand("select A.*,dbo.getsize(" + SizeID + ") as Sizee,"
                                       + SizeID + " as SizeIDD,SizeData.Name,SizeData.Extension from tblProducts A cross apply( select top 1 B.Name,Extension from tblProductImages B where B.PID=A.PID ) SizeData where A.PID="
                                       + PID + "", con))
                            {
                                cmd.CommandType = CommandType.Text;
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {

                                    sda.Fill(dt);

                                }
                            }
                        }
                        CartTotal += Convert.ToInt64(dt.Rows[i]["PSelPrice"]);
                        Total += Convert.ToInt64(dt.Rows[i]["PPrice"]);
                    }
                    rptrCartProducts.DataSource = dt;
                    rptrCartProducts.DataBind();

                    divpricedetails.Visible = true;
                    spanCartTotal.InnerText = CartTotal.ToString();
                    spanTotal.InnerText = "Rs." + Total.ToString();
                    spanDiscount.InnerText = "-" + (CartTotal - Total).ToString();
                }
                else
                {
                    //to show empty cart 

                    h4Noitems.InnerText = "Your Shopping Cart is Empty";
                    divpricedetails.Visible = false;
                }

            }
            else
            {
                //to show empty cart 

                h4Noitems.InnerText = "Your Shopping Cart is Empty";
                divpricedetails.Visible = false;
            }
        }

        protected void btnremove_Click(object sender, EventArgs e)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];

            Button btn = (Button)(sender);

            string PIDSIZE = btn.CommandArgument;

            List<String> CookiePIDList = CookiePID.Split(',').Select(i => i.Trim()).Where(i => i != string.Empty).ToList();
            CookiePIDList.Remove(PIDSIZE);
            string CookiePIDUpdated = String.Join(",", CookiePIDList.ToArray());
            if (CookiePIDUpdated == "")
            {
                HttpCookie CartProducts = Request.Cookies["CartPID"];
                CartProducts.Values["CartPID"] = null;
                CartProducts.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(CartProducts);
            }
            else
            {
                HttpCookie CartProducts = Request.Cookies["CartPID"];
                CartProducts.Values["CartPID"] = CookiePIDUpdated;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            Response.Redirect("~/Cart.aspx");

        }

        protected void btnbuy_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("~/Payment.aspx");
            }
            else
            {
                Response.Redirect("~/SignIn.aspx?rurl=cart");
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
