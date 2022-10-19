<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WebApplication2.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>contactUs</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-chrome" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
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
    <!-- navbar -->
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
                        <li><a href="AboutUs.aspx">About US</a></li>
                        <li class="active"><a href="ContactUs.aspx">Contact Us</a></li>
                        <li><a href="SignUp.aspx">SignUp</a></li>
                        <li><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- navbar end-->
        <br />
        <br />
        
        <div class="container center" >
                 
   <h2 >Contact Us</h2>
    <hr />
    <div class="row" >
        <div class="col-sm-3 col-md-4">
            <div class="thumbnail">
                <div class="media">
                    <div class="media-middle">
                        <img class="media-object" width="50px"src="Images/Contactusimg/home.png" alt="Address" />
                    </div>
                </div>
                    <div class="caption">
                        <div class="aname"><h3> Address</h3></div>
                        <h4>Shree Ganesha Store, sai Vilas Building, M.G.Road, Dombivli (W) </h4>
                        
                    </div>
            </div>
        </div> 

  

         <div class="col-sm-3 col-md-4">
            <div class="thumbnail">
                <div class="media">
                    <div class="media-middle">
                        <img class="media-object" width="50px"src="Images/Contactusimg/email.png" alt="Address" />
                    </div>
                </div>
                    <div class="caption">
                        <div class="aname"><h3>Mail</h3></div>
                        <label></label>
                        <h4>Shree@Ganesha.com</h4>
                                             
                    </div>
            </div>
        </div> 

        <div class="col-sm-3 col-md-4">
            <div class="thumbnail">
                <div class="media">
                    <div class="media-middle">
                        <img class="media-object" width="50px"src="Images/Contactusimg/phone-call.png" alt="Address" />
                    </div>
                </div>
                    <div class="caption">
                        <div class="aname"><h3>Phone</h3></div>
                        <label></label>
                        <h4>+91  9876543210</h4>
                                             
                    </div>
            </div>
        </div> 
     </div>
            <hr />
   </div>
        
       
    
        
    </form>
    <!-- footer -->
    <br />
    <hr />
    <footer  class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;2021ShreeGanesha.com &middot; <a href="OnlineGaneshBookingStore.aspx">Home</a>&middot;<a href="#">Account</a>&middot;<a href="#">Order</a>&middot;<a href="#">About Us</a>&middot;<a href="#">Contact Us</a></p>
        </div>
    </footer>
        <!--  footer end -->
</body>
</html>
