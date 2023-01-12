<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration_Form.aspx.cs" Inherits="E_Shopping_Website.Registeration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Registeration_Form.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
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
                             <li><a href="Default.aspx">Home</a></li>
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
        </div>
        <hr /><hr />
        <!-- Login Page Start -->
        <div class="loginbox">
            <img src="Images/img5.png" alt="Alternate Text" class="User"/>

            <h2 style="color:chartreuse;">Log In Here</h2>

            <!--<from runat="server">-->
                <asp:Label Text="Username" CssClass="lblusername" runat="server"></asp:Label>
                <!--<input id="tb_Uname" type="text" class="txt_Username" placeholder="Enter Username" AutoCompleteType="Disabled" OnTextChanged="tb_Uname_TextChanged"/>-->
                <asp:TextBox ID="tb_Uname" CssClass="txt_Username" runat="server" placeholder="Enter Username" AutoCompleteType="Disabled" OnTextChanged="tb_Uname_TextChanged"></asp:TextBox>
               
                <asp:Label Text="Password" CssClass="lblPassword" runat="server"></asp:Label>
            
                <asp:TextBox ID="tb_Pass" CssClass="txt_Password" placeholder="**********" runat="server" MaxLength="8" TextMode="Password"  AutoCompleteType="Disabled" OnTextChanged="tb_Pass_TextChanged" ></asp:TextBox>
                
                <div class="col-xs-11 form-check"> 
                          <asp:CheckBox ID="Chk_RememberMe" runat="server" cssclass="form-check-input" />
                           <!--<input  type="checkbox" class="form-check-input" id="check"/>-->
                             <label class="form-check" for="check1">Remember Me</label>
                </div>
                <asp:LinkButton Text="Forget Password" CssClass="btn_forget" runat="server"></asp:LinkButton><br />
                
                <asp:Button ID="bt_SignIn" text="Sign In" CssClass="btn_Submit" runat="server" OnClick="btn_Submit_Click"/>
                <asp:Button text="Sign UP" CssClass="btn_Signup" runat="server" OnClick="btn_SignUp_Click"/>
                <asp:Label ID="lblError" runat="server" Font-Size="25px" CssClass="text-danger"></asp:Label>

            <!--</from>-->

        </div>
        <!-- Middle Login End -->
       
    </form>
     <!-- Footer Content Start -->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;2020&CopyRight.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Products</a></p>
            </div>
        </footer>
        <!-- Footer Content End -->
</body>
</html>
