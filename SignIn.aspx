﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication2.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-chrome" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="js/ShowPassword.js"></script>
    <%--<script type="text/javascript">  
        $(document).ready(function () {  
            
            //CheckBox Show Password  
            $('#CheckBox3').click(function () {  
                $('#txtPass').attr('type', $(this).is(':checked') ? 'text' : 'password');  
            });  
        });  
    </script>  --%>

    
</head>
<body>
       <!-- navbar -->
    <form id="form1" runat="server">
        <div class="shadow p-3 mb-5 bg-body rounded">
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
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                        <li><a href="SignUp.aspx">SignUp</a></li>
                        <li class="active"><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
    
            <!-- navbar -->
        <!-- signin -->
        
      
         <br />
         <br />
        <div class="container">
            <div class="form-horizontal">
                <div style="text-align:center">
                  <h2>SignIn Form</h2></div>
                  <hr />
                <div class="form-group">
                  <asp:Label ID="Label1" runat="server" CssClass="col-md-5 control-label" Font-Bold="True"  placeholder=" Username "  Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtUsername" Class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatoUsername" runat="server" ErrorMessage="Enter Valid Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                  <asp:Label ID="Label2" runat="server" CssClass="col-md-5 control-label" Font-Bold="True"  placeholder=" Password "  Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPass" Class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Enter Valid Password" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                   <div class="col-md-5"></div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Font-Bold="True" Text="Remember me"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox3" runat="server" />
                        <asp:Label ID="Label5" runat="server" CssClass="control-label" Font-Bold="True" Text="Show Password"></asp:Label>
                    </div>
                    </div>
                </div>

                 

                 <div class="form-group">
                   <div class="col-md-5"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="SignIn" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
                        <br />
                        <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>
                        <br />
                       Already have an account? <asp:HyperLink ID="HyperLink2" href="SignUp.aspx" runat="server">SignUP</asp:HyperLink>

                    </div>
                </div>
            </div>
        </div>

        <!-- signin end -->
   <!-- footer -->
       <br />
        <hr />
    <footer  class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;2021ShreeGanesha.com &middot; <a href="OnlineGaneshBookingStore.aspx">Home</a>&middot;<a href="#">Account</a>&middot;<a href="#">Order</a>&middot;<a href="#">About Us</a>&middot;<a href="ContactUs.aspx">Contact Us</a></p>
        </div>
    </footer>
        <!--  footer end -->
    
    </form>
</body>
</html>
