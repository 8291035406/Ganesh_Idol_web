<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"><h4 ><asp:HyperLink class="pull-right "  ID="HL" runat="server" NavigateUrl="~/UserHome.aspx">Back To Shopping</asp:HyperLink></h4></div>
     <div class="container">
            <div style="padding-top:50px">
            <div class="col-md-9" ">
                <h4 class="proNameviewCart" runat="server" id="h4Noitems"></h4>
                <asp:Repeater ID="rptrCartProducts" runat="server">
                    <ItemTemplate>
                <%--show cart detils --%>
                    <div class="media" style="border:1px solid black;">
                        <div class="media-left">
                            <a href="viewproduct.aspx?PID=<%# Eval("PID") %> " target="_blank">
                                <img class="media-object" width="100px" src="Images/productimg/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>" />

                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading proNameviewCart"><%# Eval("PName") %></h4>
                            <p class="proPriceDiscountView">Size in Inch:<%# Eval("Sizee") %></p>
                            <span class="proPiceView"><%# Eval("PSelPrice","{0:c}") %></span>
                            <span class="proogpriceView"><%# Eval("PPrice","{0:0,00}") %></span>
                            <p>
                              <asp:Button CommandArgument='<%#Eval("PID")+"-"+ Eval("SizeIDD")%>' CssClass="RemoveButton"  ID="btnremove" runat="server" Text="Remove" Height="34px" Width="145px" OnClick="btnremove_Click" />

                            </p>
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                <%--show cart detils --%>

            </div>
            <div class="col-md-3 pt-5" runat="server" id="divpricedetails">
                <%------%>
                <div style="border-bottom: 1px solid dimgray;">
                    <h5 class="proNameviewCart">PRICE DETAILS</h5>
                    <div>
                        <label>Cart Total</label>
                        <span class="pull-right priceGray" runat="server" id="spanCartTotal"></span>
                    </div>

                    <div>
                        <label>Cart Discount</label>
                        <span class="pull-right priceGreen" runat="server" id="spanDiscount"></span>
                    </div>
                </div>
                <%------%>
                <div>
                    
                    <div class="propriceView">
                        <label>Cart Total</label>
                        <span class="pull-right " runat="server" id="spanTotal"></span>
                    </div>

                    <div>
                      <asp:Button CssClass="buyNowbtn"  ID="btnbuy" runat="server" Text="BUY NOW"  OnClick="btnbuy_Click" />

                    </div>

                </div>

            </div>
        </div>
     </div>

</asp:Content>
