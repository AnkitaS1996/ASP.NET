<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registeration_Form.aspx.vb" Inherits="Registeration_Form.Registeration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register-Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="custom.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <div align="center" class="container jumbotron bg-gray box-shadow" style="width:35%;border:solid">
            <form>
                <div align="center" class="card-header-pills bg-dark text-white">
                    <h2>Register Form</h2>
                </div>
                 <div class="form-group">
                    <label class="text-dark" for="passLabel">User Name</label>
                    <asp:TextBox ID="Txt_Uname" runat="server" CssClass="form-control" Width="80%"></asp:TextBox>
                </div>
                <div class="form-group" style="width:80%">
                    <label class="text-dark" for="emailLabel">Email Address</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">@</div>
                        </div>  
                        <asp:TextBox ID="txt_Email_Id" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="text-dark" for="passLabel">Mobile Number</label>
                    <asp:TextBox ID="Txt_MobNo" runat="server" CssClass="form-control" TextMode="Phone" Width="80%"></asp:TextBox>
                </div>
                <div class="form-group">
                        <label class="text-dark" for="passLabel">City</label>
                        <asp:TextBox ID="Txt_city" runat="server" CssClass="form-control" TextMode="Phone" Width="80%"></asp:TextBox>
                    <div class="form-group">
                        <label class="text-dark" for="passLabel">State</label>
                        <asp:TextBox ID="txt_state" runat="server" CssClass="form-control" TextMode="Phone" Width="80%"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="text-dark" for="passLabel">Password</label>
                    <asp:TextBox ID="txt_Pass" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-dark" for="passLabel">Confirm Password</label>
                    <asp:TextBox ID="Txt_Confirm_Pass" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
                </div>
                
                <div>
                    <asp:Button ID="Btn_Signup" Text="SignUp" CssClass="btn btn-outline-primary" width="80%" runat="server"/>
                </div>
                <br />
            </form>
        </div>
    </form>
</body>
</html>
