<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="WebApplication2.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddToCart</title>
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
                       <li> <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="SignOut" style="margin-top:10px" /></li>
      
                    </ul>
                </div>
          </div>
    </div>

</div>    

        <!-- -->
        
        <div class="container">
            <div style="padding-top:50px">
            <div class="col-md-9" ">
                <h4 class="proNameviewCart" runat="server" id="h4Noitems"></h4>
                <asp:Repeater ID="rptrCartProducts" runat="server">
                    <ItemTemplate>
                <%--show cart detils --%>
                    <div class="media" style="border:1px solid black;">
                        <div class="media-left">
                            <a href="ProductView.aspx?PID=<%#Eval("PID") %>" target="_blank">
                                <img class="media-object" width="100px" src="Images/productimg/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>" />

                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading proNameviewCart"><%# Eval("PName") %></h4>
                            <p class="proPriceDiscountView">Size in Inch:<%# Eval("Sizee") %></p>
                            <span class="proPiceView">Rs.<%# Eval("PSelPrice") %></span>
                            <span class="proogpriceView">Rs.<%# Eval("PPrice") %></span>
                            <p>
                              <asp:Button CssClass="RemoveButton"  ID="btnremove" runat="server" Text="Remove" Height="34px" Width="145px" OnClick="btnremove_Click" />

                            </p>
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                <%--show cart detils --%>

            </div>
            <div class="col-md-3 pt-5" runat="server" id="divpricedetails">
                <%------%>
                <div>
                    <h5>PRICE DETAILS</h5>
                    <div>
                        <label>Cart Total</label>
                        <span class="pull-right priceGrey" runat="server" id="spanCartTotal"></span>
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
