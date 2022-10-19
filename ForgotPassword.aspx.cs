using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace WebApplication2
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abhiConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tbluser where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmilID.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    string myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) Values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();

                    //Send Reset link via email

                    string TOEmailAddress = dt.Rows[0][4].ToString();
                    string Username = dt.Rows[0][1].ToString();
                    string EmailBody = "Hello , " + Username + ", <br/><br/> Click the below link to Reset Your Password.<br/> <br/>http://localhost:55629/RecoverPassword.aspx?Uid=" + myGUID;

                    
                    MailMessage PassRecMail = new MailMessage("abhishek.gawade2707@gmail.com", TOEmailAddress);

                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false; ;
                        client.Credentials = new NetworkCredential("abhishek.gawade2707@gmail.com", "abhi@#$%");
                        client.Host = "smtp.gmail.com";
                        client.Port = 25;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                        client.Send(PassRecMail);
                    }


                    //......

                    lblResetPassMsg.Text = "Reset Link Send !. Check Your Email for Reset Password..";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmilID.Text = string.Empty;
                }
                else
                {
                    lblResetPassMsg.Text = "OOps! This Email Does not Exist.. Try Again";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmilID.Text = string.Empty;
                    txtEmilID.Focus();
                }
            }

        }
    }
}
    

            
  

