<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="E_Shopping_Website.Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Sign_Up.css" rel="stylesheet" type="text/css"/>
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
                             <li class="active"><a href="Registeration_Form.aspx">Registeration</a></li>
                         </ul>
                     </div>
                </div>
            </div>
         <!--End NavBar-->
            <br />
            
        </div>
         <h2>Sign Up Form</h2>
        <div class="center-page">
                <label class="col-xs-11" for="User_Name">Username </label><br/>
                <div class="col-xs-11">
                       <asp:TextBox ID="txt_Username" runat="server" class="form-control" placeholder="Enter UserName"></asp:TextBox>
                </div>
             <label class="col-xs-11" for="Password">Password :</label><br />
                 <div class="col-xs-11">
                        <asp:TextBox ID="txt_Pass" runat="server" class="form-control" aria-describedby="Namehelp" autocomplete="off" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                 </div>

                <label class="col-xs-11" for="ConfirmPass">Confim Password : </label><br />
                <div class="col-xs-11">
                      <asp:TextBox ID="txt_C_Pass" runat="server" class="form-control" aria-describedby="Namehelp" autocomplete="off" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>  
                 </div>

                 <label class="col-xs-11" for="Full_Name">Your Full Name :</label><br />
                <div class="col-xs-11">
                       <asp:TextBox ID="txt_Full_Name" runat="server" class="form-control" aria-describedby="Namehelp" autocomplete="off" placeholder="Enter Name"></asp:TextBox>                      
                </div>
               <br />
                <label class="col-xs-11" for="Email">Email Address :</label><br />
                <div class="col-xs-11">
                       <asp:TextBox ID="txt_email" runat="server" class="form-control" aria-describedby="Namehelp" autocomplete="off" placeholder="Enter Email"></asp:TextBox>                    
                </div>
               <div class="col-xs-11 form-check"> 
                           <!--<input  type="checkbox" class="form-check-input" id="check"/>-->
                             <label></label>
                </div>
                
                <div class="col-xs-11">
                     <asp:Button ID="btn_Submits" runat="server" Text="Sign Up" class="btn btn-primary" OnClick="btn_Submits_Click" />
                     <asp:Label ID="lbl_Msg" runat="server"></asp:Label>
                </div>
           
        </div>
            

        
    </form>
</body>
</html>
