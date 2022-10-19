<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication2.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2 style="text-align:center">Add Product</h2>
            <hr />
            <div class="form-group col-md-6">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Product Name"></asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorProductName" runat="server" ControlToValidate="txtProductName" ValidationExpression="^[A-za-z]*$" ErrorMessage="Product name in character" ForeColor="red"></asp:RegularExpressionValidator>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter ProductName" ControlToValidate="txtProductName" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Price"></asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPrice" runat="server" ControlToValidate="txtPrice" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" ForeColor="Red" ErrorMessage="product pice in nubmer"></asp:RegularExpressionValidator>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter ProductPrice" ControlToValidate="txtPrice" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Selling Price"></asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="txtSellingPrice" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorSellingPrice" runat="server" ControlToValidate="txtSellingPrice" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" ForeColor="Red" ErrorMessage="product Selpice in nubmer"></asp:RegularExpressionValidator>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter ProductSellPrice" ControlToValidate="txtSellingPrice" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Category"></asp:Label>
                <div class="col-md-6">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" ></asp:DropDownList>
                    <asp:RequiredFieldValidator ControlToValidate="ddlCategory" ID="RequiredFieldValidatorCategory"  ErrorMessage=" select a category"  runat="server" ForeColor="Red" ></asp:RequiredFieldValidator>
                </div>
            </div>
            
             <div class="form-group col-md-6">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Size"></asp:Label>
                <div class="col-md-6">
                    <asp:CheckBoxList ID="cblsize" CssClass="form-control" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select size" ControlToValidate="cblsize" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
                 
            </div>

             <div class="form-group col-md-6">
                <asp:Label ID="Label13" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Quantity"></asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidatorQuantity" runat="server" ControlToValidate="txtQuantity" ValidationExpression="^[1-9]*$" ErrorMessage=""></asp:RegularExpressionValidator>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter Quantity" ControlToValidate="txtQuantity" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                </div>
            </div>

             <div class="form-group col-md-6">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Description"></asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
<%--                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorDescription" runat="server" ControlToValidate="txtDescription" ValidationExpression="^[A-za-z]*$" ErrorMessage="RegularExpressionValidator" ForeColor="Red"></asp:RegularExpressionValidator>--%>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter ProductDiscription" ControlToValidate="txtDescription" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Product Details"></asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="txtPDetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
<%--                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorProductDetails" ControlToValidate="txtPDetails" ValidationExpression="^[A-za-z]*$" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="Red"></asp:RegularExpressionValidator>--%>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="enter ProductDetail" ControlToValidate="txtPDetails" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

             <div class="form-group col-md-6">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Upload Image "></asp:Label>
                <div class="col-md-6">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Upload Image1" ControlToValidate="fuImg01" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

             <div class="form-group col-md-6">
                <asp:Label ID="Label9" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Upload Image "></asp:Label>
                <div class="col-md-6">
                    <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Upload Image2" ControlToValidate="fuImg02" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="Label10" runat="server" CssClass="col-md-4 control-label" Font-Bold="True" Text="Upload Image "></asp:Label>
                <div class="col-md-6">
                    <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />

                </div>
            </div>

              <div class="form-group col-md-6">
                   <div class="col-md-4"></div>
                    <div class="col-md-5">
                        <asp:CheckBox ID="cbFD" runat="server" />
                        <asp:Label ID="Label11" runat="server" CssClass="control-label" Font-Bold="True" Text="Free Delivery"></asp:Label>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="select FreeDelivery" ControlToValidate="cbFD" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>

            <div class="form-group col-md-6">
                   <div class="col-md-4"></div>
                    <div class="col-md-5">
                        <asp:CheckBox ID="cbCOD" runat="server" />
                        <asp:Label ID="Label12" runat="server" CssClass="control-label" Font-Bold="True" Text="C.O.D"></asp:Label>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="select COD" ControlToValidate="cbCOD" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>

               <div class="form-group">
                   <div class="col-md-5"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Add Product" OnClick="Button1_Click1" />
                       
                    </div>
                </div>
        </div>

    </div>
</asp:Content>
