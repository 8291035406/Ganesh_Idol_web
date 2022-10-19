<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="WebApplication2.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
       <br />
  <h3>  <asp:Label ID="lblsuccess" runat="server" CssClass="text-success" ></asp:Label></h3>
    <hr />
          <marquee   width = "100%" scrollamount="9"   ><label style="font-size:x-large"> Buy Ganesh idols online for this Year's Ganesh Festival,Stay home and be safe!..</label></marquee>
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
        <img src="Images/Slider1/S1.1.jpeg" alt="Los Angeles" style="width:100%;height:251px;"/>
          <div class="carousel-caption">
          <h3>The Best Place For Idol's.</h3>
          <p>Eco-friendly, Plaster of paris, Shadu-clay idols Avaliable Here.</p>
          <p><a class="btn btn-lg btn-primary" href="AboutUs.aspx" role="button">Know More</a></p>

        </div>

      </div>

      <div class="item">
        <img src="Images/Slider1/S1.3.jpeg" alt="Chicago" style="width:100%;height:251px;"/>
          <div class="carousel-caption">
          <h3>The Best Place For Idol's.</h3>
          <p>Eco-friendly, Plaster of paris, Shadu-clay idols Avaliable Here.</p>
          <p><a class="btn btn-lg btn-primary" href="AboutUs.aspx" role="button">Know More</a></p>

        </div>

      </div>

        <div class="item">
        <img src="Images/Slider1/S1.2.jpeg" alt="Chicago" style="width:100%;height:251px;"/>
            <div class="carousel-caption">
          <h3>The Best Place For Idol's.</h3>
          <p>Eco-friendly, Plaster of paris, Shadu-clay idols Avaliable Here.</p>         
          <p><a class="btn btn-lg btn-primary" href="AboutUs.aspx" role="button">Know More</a></p>

        </div>

      </div>
    
      <div class="item">
        <img src="Images/Slider1/S1.4.jpeg" alt="New york" style="width:100%;height:251px;"/>
          <div class="carousel-caption">
          <h3>The Best Place For Idol's.</h3>
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

  <div class="container center" >
   <h3 style="color: #00CC00">Products</h3>
    <div class="row" >
        <asp:Repeater ID="rptrProducts"  runat="server">
            <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <div class="thumbnail">
                <a href="viewproduct.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none">
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
</asp:Content>
