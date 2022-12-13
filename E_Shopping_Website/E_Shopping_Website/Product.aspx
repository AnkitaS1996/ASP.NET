<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="E_Shopping_Website.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
    <link href="css/Custom.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    
     <form id="form2" runat="server">
        <div>
            <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img src="ICon/Fork_Logo_PNG_ICON.ico" alt="E-Shopping" height="30" /></span>Shoppee</a>
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
                                     <li><a href="#">Shirts</a></li>
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
                             <li><a href="Registeration_Form.aspx">Registeration</a></li>
                         </ul>
                     </div>
                </div>
            </div>
         <!--End NavBar-->
            <br />
        </div>
    </form>
</body>
</html>
