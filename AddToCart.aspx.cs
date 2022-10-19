using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class AddToCart : System.Web.UI.Page
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
            if (Request.QueryString["CartPID"] != null)
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
                            using (SqlCommand cmd = new SqlCommand("select A.*,getSize("+SizeID+") as Sizee, "
                                +SizeID+ " as SizeIDD,SizeData.Name,SizeData,Extention from tblProducts A cross apply(select top 1,B.Name,Extention from tblProductImages B where B.PID=A.PID) SizeData where A.PID = '" + PID + "' ", con))
                            {
                                cmd.CommandType = CommandType.Text;
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {
                                    
                                    sda.Fill(dt);
                                    
                                }
                            }
                        }
                        CartTotal += Convert.ToInt64(dt.Rows[i]["PPrice"]);
                        Total += Convert.ToInt64(dt.Rows[i]["PSelPrice"]);
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

        }

        protected void btnbuy_Click(object sender, EventArgs e)
        {

        }
    }
}