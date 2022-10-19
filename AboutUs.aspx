<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebApplication2.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AboutUs</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-chrome" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="js/Cart.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
    <!-- nav bar -->
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
                        <button id="btncart" class="btn btn-primary navbar-btn" type="button">Cart<span class="badge" id="pCount" runat="server"></span> </button>    
                
                        <a class ="navbar-brand" href ="OnlineGaneshBookingStore.aspx"><span><img src="Images/Navimg/i1.png" alt="ShreeGanesha" height="30" />ShreeGanesha</span></a>
                    </div>
                    <div class ="navbar-collapse collaspe">
                    <ul class ="nav navbar-nav navbar-right">
                        <li><a href ="OnlineGaneshBookingStore.aspx">Home</a></li>
                        <li><a href="#">Account</a></li>
                        <li><a href="#">Order</a></li>
                        <li class="active"><a href="AboutUs.aspx">About US</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                        <li><a href="SignUp.aspx">SignUp</a></li>
                        <li><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
             <!-- nav bar end -->
         <br /><br />
         <div class="container">
             <div style="text-align:center">
                 <h1>About Us</h1>
                 <hr />
                  <div class="media" >
                        <div class="media-left">
                                <img class="media-object" width="500px" height="400px" src="Images/About image/1.png" />

                        </div>
                      <div class="media-right">
                           <h3 style="text-decoration:none; font-style: oblique; color: #33CC33;">" We are the best idol's makers "</h3>
                 <p style="font-family: Calibri; font-size:large" >The country is celebrating the  Ganesh Chaturthi festival, the Hindu festival which is dedicated to the Lord of new beginnings, Ganesha. This year, the preparations around the country have been downsized due to the ongoing COVID-19 pandemic.
Everyone is stuck in the home and they can't go out and buy all the things which are needed for ganesh utsav and it's risky too. So for that we decided to help all this peoples by providing them a platform to buy a Ganesh murti (ecofriendly) through the online medium.</p>
                
                      </div>
             </div>
                 </div>
            
             <div class="container center" >
            
                 
   <h2 style="color: #990000">Meet Our Amazing Team</h2>
    <hr />
    <div class="row" >
        <div class="col-sm-3 col-md-4">
            <div class="thumbnail">
                <img src="Images/About image/profile.jpg"/>
                    <div class="caption">
                        <div class="aname"><h4>abhishek gawade</h4></div>
                        
                    </div>
            </div>
        </div> 

        <div class="col-sm-3 col-md-4">
            <div class="thumbnail">
                <img src="Images/About image/profile.jpg"/>
                    <div class="caption">
                        <div class="aname"><h4>Prathmesh Raut</h4></div>
                        
                    </div>
            </div>
        </div> 

        <div class="col-sm-3 col-md-4">
            <div class="thumbnail">
                <img src="Images/About image/profile.jpg"/>
                    <div class="caption">
                        <div class="aname"><h4>Vaibhav Sawant</h4></div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-facebook" >
  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
</svg>                        
                    </div>
            </div>
        </div> 
     </div>
   </div>
 </div>

    

       </form>
     <hr />
    <footer  class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;2021ShreeGanesha.com &middot; <a href="OnlineGaneshBookingStore.aspx">Home</a>&middot;<a href="#">Account</a>&middot;<a href="#">Order</a>&middot;<a href="AboutUs.aspx">About Us</a>&middot;<a href="ContactUs.aspx">Contact Us</a></p>
        </div>
    </footer>
        <!--  footer end -->
</body>
</html>
