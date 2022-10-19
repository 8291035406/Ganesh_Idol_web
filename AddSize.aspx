<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="WebApplication2.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="form-horizontal">
            <h2 style="text-align:center">Add Size</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Font-Bold="true" Text="Size"></asp:Label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" CssClass="text-danger" runat="server" ErrorMessage="Enter size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-4 control-label" Font-Bold="true" Text="Category"></asp:Label>
                <div class="col-md-4">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" ></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCat" runat="server" ErrorMessage="Select Category" CssClass="text-danger"  ControlToValidate="ddlCategory"  ForeColor="Red" ></asp:RequiredFieldValidator>
                  </div>
            </div>
            <div class="form-group">
                <div class="col-md-5"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add size " OnClick="Button1_Click"  />
                </div>

            </div>
            </div>
        <hr />
        <h2>Sizes</h2>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Sizes</div>
            <%--<br />
            <br />
            <asp:Repeater ID="rptrSizes" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                     <tr>
                         <th>#</th>
                         <th>Size</th>
                         <th>Category</th>
                         <th>Edit</th>
                         <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                        <th><%# Eval("SizeID")%></th>
                        <td><%# Eval("Size") %></td>
                        <td><%# Eval("CatName") %></td>
                        <td>Edit</td>
                        <td>Delete</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                     </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
           
                    
     
        </div>
        <br />--%>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="button" DataKeyNames="SizeID"  EmptyDataText="No Record to display" Font-Bold="True" Font-Size="Large" Height="16px" PageSize="5" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False">
                <Columns>
                    <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                     <asp:TemplateField HeaderText="SizeID">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("SizeID") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                
                    <asp:TemplateField HeaderText="Size">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Size") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("CatName") %>'></asp:Label>
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
        </div>
    </div>
    <br />
    
</asp:Content>
