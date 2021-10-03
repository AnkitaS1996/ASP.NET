<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="E_Shopping_Website.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/SignUp.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
</head>
<body>

    <form id="form1" runat="server">
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
        </div>
        <hr />
        <div class="container-fluid">
            <h2>
            Sign Up Form
        </h2>
            <div class="row justify-content-center">
                <div class="col-12 col-sm-6 col-md-3">
                    <form class="form-container">
                    <div class="form-group">
                        <label for="Full_Name">Full Name :</label><br />
                        <input type="text" class="form-control" id="Full_Name" aria-describedby="Namehelp" autocomplete="off" placeholder="Enter Full Name"/>
                    </div>
                    <div class="form-group">
                        <label for="Email">Email Address : </label><br />
                        <input  type="email" class="form-control" id="Email" aria-describedby="emailhelp" autocomplete="off" placeholder="Enter Email"/>
                    </div>
                    <div class="form-group">
                         <label for="Password">Password : </label><br />
                        <input  type="password" class="form-control" id="Password" autocomplete="off" placeholder="Password"/>
                    </div>
                    <div class="form-group"> 
                        <label for="ConfirmPass">Confim Password : </label><br />
                       <input  type="password" class="form-control" id="ConfirmPass" autocomplete="off" placeholder="Confirm Password" />
                    </div>
                     <div class="form-group form-check"> 
                       <input  type="checkbox" class="form-check-input" id="check"/>
                         <label class="form-check" for="check1">Check Me</label>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
       </div>
       
   </form>
</body>
</html>
