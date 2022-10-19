<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineGaneshBookingStore.aspx.cs" Inherits="WebApplication2.OnlineGaneshBookingStore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OnlineGaneshBookingStore</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-chrome" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
        <link href="css/StyleSheet2.css" rel="stylesheet" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="js/Cart.js"></script>
    <%--<script>

        $(document).ready(function myfunction() {
            $("#btncart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });

    </script>--%>
</head>
<body>
 <!-- navbar -->
    <form id="form1" runat="server">
        <div class="shadow p-3 mb-5 bg-body rounded">
             <div class ="navbar navbar-default navbar-fixed-top " role="navigation">
                 <div class="container">
                    <div class="navbar-header">
                         <button type="button" class ="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" >
                              <span class="sr-only">Toggle Navigation</span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                        </button>    
                        <button id="btncart" class="btn btn-primary navbar-btn" type="button">Cart<span class="badge" id="pCount" runat="server"></span> </button>    
                
                        <a class ="navbar-brand" href ="OnlineGaneshBookingStore.aspx"><span><img src="Images/Navimg/i1.png" alt="ShreeGanesha" height="30" />ShreeGanesha</span></a>
                    </div>
                    <div class ="navbar-collapse collaspe">
                    <ul class ="nav navbar-nav navbar-right">
                        <li class="active"><a href ="OnlineGaneshBookingStore.aspx">Home</a></li>
                        <li><a href="#">Account</a></li>
                        <li><a href="#">Order</a></li>
                        <li><a href="AboutUs.aspx">About US</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                        <li><a href="SignUp.aspx">SignUp</a></li>
                        <li><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
    
            <!-- navbar -->

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
        <img src="Images/Slider1/S1.1.jpeg" alt="Los Angeles" style="width:100%;height:350px;"/>
          <div class="carousel-caption">
          <h2>The Best Place For Idol's.</h2>
          <p>Eco-friendly, Plaster of paris, Shadu-clay idols Avaliable Here.</p>
          <p><a class="btn btn-lg btn-primary" href="AboutUs.aspx" role="button">Know More</a></p>

        </div>

      </div>

      <div class="item">
        <img src="Images/Slider1/S1.3.jpeg" alt="Chicago" style="width:100%;height:350px;"/>
          <div class="carousel-caption">
          <h2>The Best Place For Idol's.</h2>
          <p>Eco-friendly, Plaster of paris, Shadu-clay idols Avaliable Here.</p>
          <p><a class="btn btn-lg btn-primary" href="AboutUs.aspx" role="button">Know More</a></p>

        </div>

      </div>

        <div class="item">
        <img src="Images/Slider1/S1.2.jpeg" alt="Chicago" style="width:100%;height:350px;"/>
            <div class="carousel-caption">
          <h2>The Best Place For Idol's.</h2>
          <p>Eco-friendly, Plaster of paris, Shadu-clay idols Avaliable Here.</p>         
          <p><a class="btn btn-lg btn-primary" href="AboutUs.aspx" role="button">Know More</a></p>

        </div>

      </div>
    
      <div class="item">
        <img src="Images/Slider1/S1.4.jpeg" alt="New york" style="width:100%;height:350px;"/>
          <div class="carousel-caption">
          <h2>The Best Place For Idol's.</h2>
          <p>Eco-friendly, Plaster of paris, Shadu-clay idols Avaliable Here.</p>
              <p><a class="btn btn-lg btn-primary" href="AboutUs.aspx" role="button">Know More</a></p>
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
                  <marquee   width = "100%" scrollamount="9"   ><label style="font-size:x-large"> Buy Ganesh idols online for this Year's Ganesh Festival..</label></marquee>
         <!-- welcome-->
    <hr />
        <div class="container center" style="text-align:center">
            <h3  style="color: #990000">Welcome</h3>
           <h4 style="color: #008000"> <asp:Label ID="Label1" runat="server" Text="Sign in for the best experrience"></asp:Label></h4>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="SignIn" OnClick="Button1_Click" />
            <br />
          <h4>  <a href="SignUp.aspx" style="text-decoration:none">Create an Account</a></h4>
        </div>
        <hr />


    <!-- welcome end-->
        <!-- repeater-->
        <div class="container center" >
   <h3 style="color: #00CC00">Products</h3>
    <div class="row" >
        <asp:Repeater ID="rptrProducts"  runat="server">
            <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <div class="thumbnail">
                <a href="SignIn.aspx" style="text-decoration:none">
                <img src="Images/productimg/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>"   alt="<%# Eval("Name") %>" >
                    <div class="caption">
                        <div style="color: #CC0066" class="proname"><%# Eval("PName") %></div>
                       <hr />
                        <div class="proprice">
                            <span class="proogprice"><%# Eval("PPrice","{0:0,00}") %></span>Rs.<%# Eval("PSelPrice","{0:c}") %><span class="proPriceDiscount">(Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %>off)</span>
                            <br /><br />
                        </div>
                    </div>
                    </a>
            </div>
        </div> 
                </ItemTemplate>
            </asp:Repeater>
    </div>
 </div>
        <!-- repeater end-->



</form>
      <!-- footer -->
       
    <footer  class="footer-pos">
        <div class="container">
            <hr />
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;2021ShreeGanesha.com &middot; <a href="OnlineGaneshBookingStore.aspx" style="text-decoration:none">Home</a>&middot;<a href="#" style="text-decoration:none">Account</a>&middot;<a href="#" style="text-decoration:none">Order</a>&middot;<a href="AboutUs.aspx" style="text-decoration:none">About Us</a>&middot;<a href="#" style="text-decoration:none">Contact Us</a></p>
        </div>
    </footer>
        <!--  footer end -->
</body>
</html>
