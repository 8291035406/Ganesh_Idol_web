<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHomePage.aspx.cs" Inherits="WebApplication2.UserHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserHomePage</title>
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
                       <li> <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="SignOut" style="margin-top:10px" OnClick="Button1_Click" /></li>
      
                    </ul>
                </div>
          </div>
    </div>

</div>    

        <!-- Navigation Bar end -->
       <br />
       <br />
  <h3>  <asp:Label ID="lblsuccess" runat="server" CssClass="text-success" ></asp:Label></h3>
    <hr />
          <marquee width = "100%" scrollamount="11" >This example will take only 50% width</marquee>
     <!-- Image slider -->
        <div class="container">                                      
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="imgslider/s1.jpg" alt="Los Angeles" style="width:100%;height:251px;"/>
          <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy now</a></p>

        </div>

      </div>

      <div class="item">
        <img src="imgslider/s2.jpg" alt="Chicago" style="width:100%;height:251px;"/>
          <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy now</a></p>

        </div>

      </div>

        <div class="item">
        <img src="imgslider/s3.jpg" alt="Chicago" style="width:100%;height:251px;"/>
            <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>         
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy now</a></p>

        </div>

      </div>
    
      <div class="item">
        <img src="imgslider/s4.jpg" alt="New york" style="width:100%;height:251px;"/>
          <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy now</a></p>
        </div>

      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
     <!-- Image slider end -->
        <hr />
                  <marquee width = "100%" scrollamount="11" >This example will take only 50% width</marquee>

  <div class="container center" >
   <h4>Products</h4>
    <div class="row" >
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <div class="thumbnail">
                <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none">
                <img src="Images/productimg/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>"">
                    <div class="caption">
                        <div class="proname"><%# Eval("PName") %></div>
                        <div class="proprice">
                            <span class="proogprice">Rs.<%# Eval("PPrice") %></span>Rs.<%# Eval("PSelPrice") %><span class="proPriceDiscount">(Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PSelPrice"))-Convert.ToInt64(Eval("PPrice"))) %>off)</span>
                            <br /><br />
                            <asp:Button class="abc"  ID="Button2" runat="server" Text="Add To Cart" Height="34px" Width="145px" />
                        </div>
                    </div>
                    </a>
            </div>
        </div> 
                </ItemTemplate>
            </asp:Repeater>
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
