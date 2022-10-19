<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="WebApplication2.viewproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div style="padding-top:50px">
            <div class="col-md-5">
                <div style="max-width:480px" class="thumbnail">
                    <!-- for proimage slider -->
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
      
  <div class="carousel-inner" role="listbox">
   <asp:Repeater ID="rptrImage" runat="server">
       <ItemTemplate>
    <div class="item <%# GetActiveImgClass(Container.ItemIndex) %>">
      <img src="Images/productimg/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>">
      <div class="carousel-caption">
      </div>
    </div>
       </ItemTemplate>
   </asp:Repeater>
  
 </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                        <!-- for proimage slider end -->

                </div>
            </div>
            <div class="col-md-5">
                <asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound" >
                    <ItemTemplate>
                <div class="divDet1">
                <h1 class="pronameView"><%# Eval("PName") %>  </h1>
                <span class="proogpriceView"><%# Eval("PPrice","{0:0,00}") %></span><span class="proPriceDiscountView">(Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %>off)</span>
                <p class="propriceView"><%# Eval("PSelPrice","{0:c}") %></p>
                </div>
                <div class="divDet1">
                    <h5 class="h5size">Sizes In Inch</h5>
                    <asp:RadioButtonList ID="rblsize" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                </div>
                <div class="divDet1">
                    <asp:Button ID="btnaddtocart" class="abc" runat="server" Text="Add To Cart" Height="41px" Width="142px" OnClick="btnaddtocart_Click"  />
                    <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>

                </div>

                <div class="divDet1">
                    <h5 class="h5size">Description</h5>
                    <p><%# Eval("PDescription") %></p>

                    <h5 class="h5size">Product Details</h5>
                    <p><%# Eval("PProductDetails") %></p>
                </div>
                <div >
                    <p><%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":"" %></p>
                    <p><%# ((int)Eval("COD")==1)? "Cash On Delivery":"" %></p>
                </div>
                        <asp:HiddenField ID="hfCatID" runat="server"  Value='<%# Eval("PCategoryID") %>'/>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
         </div>
           

</asp:Content>
