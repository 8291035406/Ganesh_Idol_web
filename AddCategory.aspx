<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="WebApplication2.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2 style="text-align:center">Add Category</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Font-Bold="true" Text="Category Name"></asp:Label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" CssClass="text-danger" runat="server" ErrorMessage="Enter Category Name" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidatorCategory" runat="server" ControlToValidate="txtCategory" ForeColor="Red" ErrorMessage="Category is in character" ValidationExpression="^[A-za-z]{"></asp:RegularExpressionValidator>--%>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-5"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add Category " OnClick="Button1_Click" />
                </div>

            </div>
        </div>
        <hr>
        <h2>Category</h2>
        <hr />
        <div class="panel panel-default">
             <div class="panel-heading">All Category</div>

             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="button" DataKeyNames="CatID" EmptyDataText="No Record to display" Font-Bold="True" Font-Size="Large" Height="16px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
                 <Columns>
                      <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:CommandField>
                     <asp:TemplateField HeaderText="Category">
                        <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Text='<%# Eval("CatName") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("CatName") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     </Columns>
                 <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                 <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                 <RowStyle BackColor="White" ForeColor="#330099" />
                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                 <SortedAscendingCellStyle BackColor="#FEFCEB" />
                 <SortedAscendingHeaderStyle BackColor="#AF0101" />
                 <SortedDescendingCellStyle BackColor="#F6F0C0" />
                 <SortedDescendingHeaderStyle BackColor="#7E0000" />
             </asp:GridView>
             <br />
        </div>
      </div>
</asp:Content>
