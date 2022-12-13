<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="E_Shopping_Website.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custom.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="navbar navbar-fixed-top navbar-default" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img src="ICon/Fork_Logo_PNG_ICON.ico" alt="E-Shopping" height="30" /></span>E-Shoppee</a>
                    </div>
                     <div class="navbar-collapse collapse">
                         <ul class="nav navbar-nav navbar-right">
                             <li class="active"><a href="Default.aspx">Home</a></li>
                              <li><a href ="#">About</a></li>
                             <li><a href ="#">Contact</a></li>
                             <li><a href ="#">Blog-</a></li>
                             <li class="drodown">
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                 <ul class="dropdown-menu">
                                     <li class="dropdown-header">Men</li>
                                     <li role="separator" class="divider "></li>
                                     <li><a href="Product.aspx">Shirts</a></li>
                                     <li><a href="#">Jeans</a></li>
                                     <li><a href="#">Denims</a></li>

                                     <li role="separator" class="divider "></li>

                                     <li class="dropdown-header">Women</li>
                                     <li role="separator" class="divider "></li>
                                     <li><a href="#">Top</a></li>
                                     <li><a href="#">Leggies</a></li>
                                     <li><a href="#">Denims</a></li>
                                 </ul>
                             </li>
                             <li class="active"><a href="Registeration_Form.aspx">Registeration</a></li>
                         </ul>
                     </div>
                </div>
            </div>
            <!--End NovBar-->
             
             <!--/* Start Slider Menu */-->
            <hr /><hr />
            <div class="container">
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
                
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner ">
                  <div class="item active">
                    <img src="Slider_Images/img1.jpg" alt="Los Angeles" style="width:100%;height:500px;">
                      <div class="carousel-caption">
                          <h3><bold>Woman Shopping</bold></h3>
                          <p>50% OFF</p>
                           <p><a class="btn btn-primary" href="#" role="button">BUY NOW</a></p>

                      </div>
                  </div>

                  <div class="item">
                    <img src="Slider_Images/img2.jfif" alt="Chicago" style="width:100%;height:500px;">
                      <div class="carousel-caption">
                          <h3><bold>Online Shopping</bold></h3>
                          <p>20% OFF</p>
                          <p><a class="btn btn-warning" href="#" role="button">BUY NOW</a></p>

                      </div>
                  </div>
    
                  <div class="item">
                    <img src="Slider_Images/img3.jpg" alt="New york" style="width:100%;height:500px;">
                      <div class="carousel-caption">
                          <h3><bold>Watch Shopping</bold></h3>
                          <p>30% OFF</p>
                          <p><a class="btn btn-success" href="#" role="button">BUY NOW</a></p>

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
       <!-- End Slider Menu -->
      </div>

        <!-- Middle Content -->
        <hr />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/img1.jpg" alt="thumb" width="140" height="140" />
                    <h2>Mobiles</h2>
                    <p>Redmi Y2 RAM:16GB camera quality clear front camera 12 and back 15...View the latest collection of photos for the new mobiles in high-resolution. 
                        All the images of newly launched mobiles, upcoming smartphones, leaked phones, concept & rumored mobiles are available from all angles in high definition. 
                        Also find photos of your favorite mobiles from Samsung, Apple, Xiaomi, Motorola, Vivo, Oppo, Lenovo, Honor and more brands. </p>
                    <p><a class="btn btn-primary" href="#" role="button">View More &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/img2.jfif" alt="thumb" width="140" height="140" />
                    <h2>footwear</h2>
                    <p>View the latest collection of photos for the new mobiles in high-resolution. 
                        All the images of newly launched mobiles, upcoming smartphones, leaked phones, concept & rumored mobiles are available from all angles in high definition. 
                        Also find photos of your favorite mobiles from Samsung, Apple, Xiaomi, Motorola, Vivo, Oppo, Lenovo, Honor and more brands. </p>
                    <p><a class="btn btn-primary" href="#" role="button">View More &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/img5.png" alt="thumb" width="140" height="140" />
                    <h2>clothing</h2>
                    <p>Clothing Quality is good,View the latest collection of photos for the new mobiles in high-resolution. 
                        All the images of newly launched mobiles, upcoming smartphones, leaked phones, concept & rumored mobiles are available from all angles in high definition. 
                        Also find photos of your favorite mobiles from Samsung, Apple, Xiaomi, Motorola, Vivo, Oppo, Lenovo, Honor and more brands. </p>
                    <p><a class="btn btn-primary" href="#" role="button">View More &raquo;</a></p>
                </div>
            </div>
        </div>
        <!-- Middle Content End -->

        <!-- Footer Content Start -->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;2020&CopyRight.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Products</a></p>
            </div>
        </footer>
        <!-- Footer Content End -->
    </form>
    
</body>
</html>
