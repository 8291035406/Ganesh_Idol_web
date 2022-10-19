<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication2.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-chrome" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="js/ShowPassword.js"></script>
    <%-- <script type="text/javascript">  
        $(document).ready(function () {  
            
            //CheckBox Show Password  
            $('#CheckBox1').click(function () {  
                $('#txtPass').attr('type', $(this).is(':checked') ? 'text' : 'password');  
            });  
        });  
    </script>  --%>

       
</head>
<body>
    <!-- navbar -->
    <form id="form1" runat="server" class="auto-style1">
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
                        <li class="active"><a href="SignUp.aspx">SignUp</a></li>
                        <li><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
    
            <!-- navbar -->
 <!-- signup  -->
        <br />
        <br />
         <div class="container">
             <div class="form-horizontal">
                 <div style="text-align:center">
          <h2>Registration Form</h2></div>
            <hr />
              <div class="form-group col-md-6">
                  <asp:Label ID="Label2" runat="server" CssClass="col-md-5 control-label" Font-Bold="True"  Text="Username"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtUsername" Class="form-control"  runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ErrorMessage="Username in characters" ControlToValidate="txtUsername" ValidationExpression="^[0-9A-za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>

                    </div>
                </div>

                 <div class="form-group col-md-6">
                  <asp:Label ID="Label3" runat="server" CssClass="col-md-4 control-label" Font-Bold="True"    Text="First name"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtFname" Class="form-control"  runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ErrorMessage="Username in characters" ControlToValidate="txtFname" ValidationExpression="^[A-za-z]*$" ForeColor="Red" ></asp:RegularExpressionValidator>

                    </div>
                </div>

                 <div class="form-group  col-md-6">
                  <asp:Label ID="Label4" runat="server" CssClass="col-md-5 control-label" Font-Bold="True"   Text="Last name"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtLname" Class="form-control"  runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ErrorMessage="Username in characters" ControlToValidate="txtLname" ValidationExpression="^[A-za-z]*$" ForeColor="Red" ></asp:RegularExpressionValidator>

                    </div>
                </div>

                 <div class="form-group col-md-6">
                  <asp:Label ID="Label5" runat="server" CssClass="col-md-4 control-label" Font-Bold="True"   Text="Email"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtEmail" Class="form-control"  runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Enter Valid EmailId"  ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>

                    </div>
                </div>

                 <div class="form-group col-md-6">
                  <asp:Label ID="Label9" runat="server" CssClass="col-md-5 control-label" Font-Bold="True"   Text="Gender"></asp:Label>
                    <div class="col-md-7">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem Value="select Gender">Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Gender" ControlToValidate="DropDownList1" InitialValue="Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class="form-group col-md-6">
                  <asp:Label ID="Label10" runat="server" CssClass="col-md-4 control-label" Font-Bold="True"   Text="Contact Number"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtphn" Class="form-control"  runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ErrorMessage="Enter 10 digit contact Number" ControlToValidate="txtphn" ForeColor="Red" ValidationExpression="^([2-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                        
                    </div>
                </div>


                 <div class="form-group col-md-6">
                  <asp:Label ID="Label6" runat="server" CssClass="col-md-5 control-label" Font-Bold="True"    Text="Address"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtAddress" Class="form-control" TextMode="MultiLine"  runat="server"></asp:TextBox>
<%--                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  ErrorMessage="Username in characters" ControlToValidate="txtFname" ValidationExpression="^[0-9A-za-z]*$" ></asp:RegularExpressionValidator>--%>

                    </div>
                </div>
                 <div class="form-group col-md-6">
                  <asp:Label ID="Label7" runat="server" CssClass="col-md-4 control-label" Font-Bold="True"   Text="Password"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtPass" Class="form-control" TextMode="Password" runat="server"></asp:TextBox>
<%--                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"  ErrorMessage="Username in characters" ControlToValidate="txtFname" ValidationExpression="^[0-9A-za-z]*$" ></asp:RegularExpressionValidator>--%>
                        <asp:regularexpressionvalidator id="rev1" runat="server" controltovalidate="txtPass" errormessage="Minimum 6 characters atleast 1 Alphabet, 1 Number and 1 Special Character" validationexpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{6,}$" ForeColor="Red"></asp:regularexpressionvalidator>
                    </div>
                </div>


                 <div class="form-group col-md-6">
                  <asp:Label ID="Label8" runat="server" CssClass="col-md-5 control-label" Font-Bold="True"   Text=" Confirm Password"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtCPass" Class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                         <asp:regularexpressionvalidator id="rev2" runat="server" controltovalidate="txtCPass" errormessage="Minimum 6 characters atleast 1 Alphabet, 1 Number and 1 Special Character" validationexpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{6,}$" ForeColor="Red"></asp:regularexpressionvalidator><br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ForeColor="Red" ControlToCompare="txtPass" ControlToValidate="txtCPass"></asp:CompareValidator>
                    </div>
                </div>

                 <div class="form-group">
                   <div class="col-md-5"></div>
                    <div class="col-md-6">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label1" runat="server" CssClass="control-label" Font-Bold="True" Text="Show Pasword"></asp:Label>
               
                       </div>
                    </div>
                </div>

              <div class="form-group">
                   <div class="col-md-5"></div>
                    <div class="col-md-6">
                       <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" data-bs-toggle="popover"  Width="131px" Text="SignUP" OnClick="Button1_Click" />
            <div class="col-xs-11">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </div>
           <br /><br />
         Already have an account ? <a href="SignIn.aspx" style="text-decoration:none"> SignIn </a>
        
                    </div>
                </div>
            </div>
           <%-- <label class="col-md-2 control-label">Username:</label>
            <div class="col-md-3">
            <asp:TextBox ID="txtUsername" runat="server" Class="form-control" placeholder="Enter Your Username" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorUsername" runat="server"  ErrorMessage="Username in characters" ControlToValidate="txtUsername" ValidationExpression="^[0-9A-za-z]*$" ></asp:RegularExpressionValidator>
            </div>--%>

          <%--  <label class="col-xs-11">First name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtFname" runat="server" Class="form-control" placeholder="Enter Your Fisrt Name" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorFname" runat="server" ErrorMessage="Fname in characters" ControlToValidate="txtFname" ValidationExpression="^[A-za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>--%>

            <%-- <label class="col-xs-11">Last name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtLname" runat="server" Class="form-control" placeholder="Enter Your Last Name" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLname" ValidationExpression="^[A-za-z]*$" ErrorMessage="RegularExpressionValidator" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>--%>


             <%--<label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email " ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Enter Valid EmailId"  ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>--%>

<%--             <label class="col-xs-11">Address:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtAddress" runat="server" Class="form-control" placeholder="Enter Your Address " ></asp:TextBox>
               <%--<-- <asp:RegularExpressionValidator ID="RegularExpressionValidatorAddress" runat="server" ControlToValidate="txtAddress" ValidationExpression="^[0-9A-za-z]*$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>--%>
           <%-- </div>--%>

            <%-- <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" Class="form-control" TextMode="Password" placeholder="Enter Your password" ></asp:TextBox>
            </div>

             <label class="col-xs-11">Confirm password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" Class="form-control" TextMode="Password" placeholder="Enter Your confirm password" ></asp:TextBox>
            
            </div>--%>

                


          <%-- <div class="col-md-6">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label1" runat="server" CssClass="control-label" Font-Bold="True" Text="Show Pasword"></asp:Label>
                

            </div>--%>
            

            <%--<label class="col-xs-11"></label>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" data-bs-toggle="popover" style="margin-left: 71" Width="131px" Text="SignUP" OnClick="Button1_Click" />
            <div class="col-xs-11">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </div>
            <label class="col-xs-11">
            </label>            
         Already have an account ? <a href="SignIn.aspx" style="text-decoration:none"> SignIn </a>
        </div>
        </div>--%>

        </form>

        <!-- signup end -->
          <!-- footer -->
       
    <footer  class="footer-pos1">
        <div class="container">
            <hr />
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;2021ShreeGanesha.com &middot; <a href="OnlineGaneshBookingStore.aspx">Home</a>&middot;<a href="#">Account</a>&middot;<a href="#">Order</a>&middot;<a href="ContactUs.aspx">About Us</a>&middot;<a href="#">Contact Us</a></p>
        </div>
    </footer>
        <!--  footer end -->
     
</body>
</html>
