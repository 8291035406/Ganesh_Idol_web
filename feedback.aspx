<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="WebApplication2.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="form-horizontal">
                
                  <h2>Feedback us</h2>
                  <hr />
                <div class="form-group">
                  <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Font-Bold="True"   Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtUsername" Class="form-control" runat="server"></asp:TextBox>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Enter Your Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9A-za-z]*$" ControlToValidate="txtUsername" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="form-group">
                  <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Font-Bold="True"  Text="Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmail" Class="form-control" runat="server"></asp:TextBox>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>

              
                <div class="form-group">
                  <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Font-Bold="True"   Text="Subject"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSub" Class="form-control" runat="server"></asp:TextBox>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSub" runat="server" ErrorMessage="Enter Valid subject" ControlToValidate="txtSub" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>

                <div class="form-group">
                  <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Font-Bold="True"    Text="Inquiry"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtInq" Class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorInq" runat="server" ErrorMessage="Enter Your massage" ControlToValidate="txtInq" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                
                <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6">
                                                <asp:Label ID="lbl" runat="server" ></asp:Label>

                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Send" OnClick="Button1_Click1"  />
                       
                    </div>
                </div>
             </div>
          </div>
           

         
</asp:Content>
