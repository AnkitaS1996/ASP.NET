<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Login_Form_ASP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 450px;
            margin:auto;
            border:ridge 3px black;
        }
        .auto-style2 {
            width: 174px;
        }
        .auto-style3 {
            width: 174px;
            font-size: larger;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            font-size: xx-large;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2"><strong>SIGNUP FORM</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">First Name</td>
                    <td>
                        <asp:TextBox ID="txt_FirstName" runat="server" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter First Name" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_FirstName"> *</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Last Name</td>
                    <td>
                        <asp:TextBox ID="txt_LastName" runat="server" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Last Name" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_LastName"> *</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td>
                        <asp:DropDownList ID="DDL_Gender" runat="server" Font-Size="Large" Width="223px" Height="32px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select Gender" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DDL_Gender"> *</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email</td>
                    <td>
                        <asp:TextBox ID="txt_Email" runat="server" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Select Email" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_Email"> *</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Please Enter valid Email" Font-Size="Medium" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> * </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Address</td>
                    <td>
                        <asp:TextBox ID="txt_Address" runat="server" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Address" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_Address"> *</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username</td>
                    <td>
                        <asp:TextBox ID="txt_Username" runat="server" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Username" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_Username"> *</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="txt_Password" runat="server" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Password" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_Password"> *</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_Password" Display="Dynamic" ErrorMessage="Enter Strong Password With Uppercase ,Lowercase,Digit,Character" Font-Size="Medium" ForeColor="#FF3300" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\w+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txt_Confirm_Pass" runat="server" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Confirm Password" Display="Dynamic" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_Confirm_Pass"> *</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_Password" ControlToValidate="txt_Confirm_Pass" Display="Dynamic" ErrorMessage="Password is not Identical" Font-Size="Medium" ForeColor="#FF3300" SetFocusOnError="True"> *</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_SignUp" runat="server" CssClass="auto-style4" Height="48px" Text="SignUp" Width="187px" BackColor="#990000" BorderColor="#660066" BorderStyle="Double" ForeColor="White" OnClick="btn_SignUp_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <a href="Login.aspx"><span class="auto-style4">Goto Login Form</span></a>
                    </td>
                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" Font-Size="Larger" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
