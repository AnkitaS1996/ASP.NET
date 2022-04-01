<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Registeration_Form.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login-Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="custom.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <div align="center" class="container jumbotron bg-gray box-shadow" style="width:35%;border:solid" >
            <form>
                <div class="card-header-pills bg-dark text-white">
                    <h2>Login Form</h2>
                </div>
                <div class="form-group" style="width:80%">
                    <label class="text-dark" for="emailLabel">Email Address </label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">@</div>
                        </div>  
                        <asp:TextBox ID="txt_Email_Id" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="text-dark" for="passLabel">Password </label>
                    <asp:TextBox ID="txt_Pass" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
                </div>
                <div class="form-group form-check">
                    <asp:CheckBox  ID="chkb_Pass" runat="server" CssClass="form-check-input"/>
                    <label class="form-check-label">Remember Me?</label>
                </div>
                
                <div>
                    <asp:Button ID="btn_Login" Text="Login" CssClass="btn btn-primary" width="80%" runat="server"/>
                </div>
                <br />
                <div>
                    <asp:Button ID="Btn_Signup" Text="SignUp" CssClass="btn btn-primary" width="80%" runat="server"/>
                </div>
                <br />
                <div>
                    <asp:LinkButton ID="btnlinkForgetPass" cssclass="btn btn-link" runat="server">Forget Password</asp:LinkButton>
                    <!--<asp:LinkButton ID="btn_link_SignUp" CssClass="btn btn-link" runat="server">Sign Up</asp:LinkButton>-->
                </div>
            </form>
        </div>
    </form>
</body>
</html>
