<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_Form_ASP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            height: 32px;
            width: 229px;
        }
        
        table{
            margin:auto;
            width:300px;
            border:2px solid black;
        }
       
        .auto-style5 {
           
            font-size: x-large;
            text-align:center;
            background-color:brown;
            color:white;
        }
        .auto-style9 {
            width: 52px;
        }
        .auto-style10 {
            width: 52px;
            /*height: 32px;*/
            font-size: x-large;
        }
        .auto-style11 {
            font-size: xx-large;
        }
        .auto-style4{
            border-radius:8px;
            
        }
        .Link{
            font-size: larger;
            text-align:center;
        }
    </style>
</head>
<body style="height: 249px">
    <form id="form1" runat="server">
        <div>

            <table cellpadding="3" cellspacing="3">
                <tr> 
                    <td class="auto-style5" colspan="2"><strong><span class="auto-style11">Login Form</span></strong> </td>
                </tr>
                <tr> 
                    <td class="auto-style10">Username</td>
                    <td>
                        <asp:TextBox ID="txt_Uname" runat="server" Height="32px" Width="219px" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Uname" Display="Dynamic" ErrorMessage="Please Enter UserName" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Password</td>
                    <td>
                        <asp:TextBox ID="txt_Password" runat="server" Height="32px" Width="219px" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Password" Display="Dynamic" ErrorMessage="Please Enter Password" Font-Size="Medium" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style4">
                        <asp:Button ID="btn_Login" runat="server" Text="Login" Height="40px" Width="101px" OnClick="btn_Login_Click" />&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                   <td class="Link" colspan="2">
                       <a href="Register.aspx">Not Register Yet ? Click Here</a>
                   </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
