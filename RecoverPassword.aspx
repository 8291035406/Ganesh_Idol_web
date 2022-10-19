<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="WebApplication2.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PasswordRecovery</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-chrome" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
</head>
<body>
    
    <!-- navbar -->
    <form id="form1" runat="server">
        <div>
             <div class ="navbar navbar-default navbar-fixed-top" role="navigation">
                 <div class="container">
                    <div class="navbar-header">
                         <button type="button" class ="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" >
                              <span class="sr-only">Toggle Navigation</span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                        </button>     
                        <a class ="navbar-brand" href ="OnlineGaneshBookingStore.aspx"><span><img src="Images/Navimg/i1.png" alt="ShreeGanesha" height="30" />ShreeGanesha</span></a>
                    </div>
                    <div class ="navbar-collapse collaspe">
                    <ul class ="nav navbar-nav navbar-right">
                        <li><a href ="OnlineGaneshBookingStore.aspx">Home</a></li>
                        <li><a href="#">Account</a></li>
                        <li><a href="#">Order</a></li>
                        <li><a href="#">About US</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="SignUp.aspx">SignUp</a></li>
                        <li><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- navbar end-->

        <div class="container">
             <div class="form-horizontal">
                 <br />
                 <br />
                 <h2>Reset Password</h2>
                 <hr />
                 <div class="form-group">
                     <asp:Label ID="lblmsg" runat="server" visible="false" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                 </div>
                 <div class="form-group">
                     <asp:Label ID="lblNewPass" runat="server"  Font-Bold="True" CssClass="col-md-5 control-label"  placeholder="Enter new Paddword "  Text="New Password"></asp:Label>
                     <div class="col-md-3">
                         <asp:TextBox ID="txtNewPass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" runat="server" ErrorMessage="Enter New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:regularexpressionvalidator id="rev1" runat="server" controltovalidate="txtNewPass" errormessage="Minimum 6 characters atleast 1 Alphabet, 1 Number and 1 Special Character" validationexpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{6,}$" ForeColor="Red"></asp:regularexpressionvalidator>

                     </div>
                 </div>

                 <div class="form-group">
                     <asp:Label ID="lblNewCPass" runat="server"  Font-Bold="True" CssClass="col-md-5 control-label"  placeholder="Enter new Paddword "  Text="Confirm Password"></asp:Label>
                     <div class="col-md-3">
                         <asp:TextBox ID="txtNewCPass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                     </div>
                 </div>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewCPass" runat="server" ErrorMessage="Enter New Confirm Password" ControlToValidate="txtNewCPass" ForeColor="Red"></asp:RequiredFieldValidator><br />
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't Match" ControlToValidate="txtNewCPass" ForeColor="Red" ControlToCompare="txtNewPass"></asp:CompareValidator><br />
                        <asp:regularexpressionvalidator id="rev2" runat="server" controltovalidate="txtNewCPass" errormessage="Minimum 6 characters atleast 1 Alphabet, 1 Number and 1 Special Character" validationexpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{6,}$" ForeColor="Red"></asp:regularexpressionvalidator>


                 <div class="form-group">
                     <div class="col-md-5"></div>

                     <div class="col-md-6">
                         <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Reset" OnClick="Button1_Click"  />
                         <br />
                         <asp:Label ID="lblResetPassMsg"  runat="server"></asp:Label>
                     </div>

                 </div>

             </div>

         </div>


    </form>
    <br />
        <hr />
    <footer  class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;2021ShreeGanesha.com &middot; <a href="OnlineGaneshBookingStore.aspx">Home</a>&middot;<a href="#">Account</a>&middot;<a href="#">Order</a>&middot;<a href="ContactUs.aspx">About Us</a>&middot;<a href="#">Contact Us</a></p>
        </div>
    </footer>
        <!--  footer end -->
</body>
</html>
