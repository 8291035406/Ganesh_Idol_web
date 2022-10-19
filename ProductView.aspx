<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="WebApplication2.ProductView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProductView</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-chrome" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <link href="css/StyleSheet2.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script>
      $(document).ready(function myfunction() {
          $("#btnCart").click(function myfunction() {
              window.location.href = "~/AddToCart.aspx;
          });
      })
  </script>
  

</head>
<body>
     <!-- Navigation Bar -->
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
                <button type="btnCart" class="btn btn-primary"style="margin-top:10px;margin-left:5px">
                    <span class="badge" id="pCount" runat="server"></span>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>
              </button>
                <a class ="navbar-brand" href ="WebForm1.aspx"><span><img src="Images/Navimg/i1.png" alt="ShreeGanesha" height="30" />ShreeGanesha</span></a>
            </div>
                <div class ="navbar-collapse collaspe">
                    <ul class ="nav navbar-nav navbar-right">
                        <li><a href ="OnlineGaneshBookingStore.aspx">Home</a></li>
                        <li><a href="#">Account</a></li>
                        <li><a href="#">Order</a></li>
                        <li><a href="#">About US</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                       <li> <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="SignOut" style="margin-top:10px" OnClick="Button1_Click"  /></li>
      
                    </ul>
                </div>
          </div>
    </div>

</div>    

        <!-- Navigation Bar end -->
        <br />
       <hr />
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
                <span class="proogpriceView">Rs.<%# Eval("PPrice") %></span><span class="proPriceDiscountView">(Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PSelPrice"))-Convert.ToInt64(Eval("PPrice"))) %>off)</span>
                <p class="propriceView">Rs.<%# Eval("PSelPrice") %></p>
                </div>
                <div class="divDet1">
                    <h5 class="h5size">Sizes In Inch</h5>
                    <asp:RadioButtonList ID="rblsize" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                </div>
                <div class="divDet1">
                    <asp:Button ID="btnaddtocart" class="abc" runat="server" Text="Add To Cart" Height="41px" Width="142px" OnClick="btnaddtocart_Click" />
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

    </form>
    <!-- footer -->
    
         <hr />
    <footer  class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;2021ShreeGanesha.com &middot; <a href="ShreeGanesha.aspx">Home</a>&middot;<a href="#">Account</a>&middot;<a href="#">Order</a>&middot;<a href="#">About Us</a>&middot;<a href="#">Contact Us</a></p>
        </div>
    </footer>
        <!--  footer end -->
</body>
</html>
