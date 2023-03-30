<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Control_DropDownList.aspx.cs" Inherits="DropDown_List.Control_DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 86px;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <%-- Listitems added to the dropdownlist at the design --%>
        <asp:DropDownList ID="DropDownListCity" runat="server" CssClass="auto-style2" Height="30px" Width="282px">
            <asp:ListItem Value="-1" Text="Select City"></asp:ListItem>
            <asp:ListItem Value="1" Text="Pune"></asp:ListItem>
            <asp:ListItem Value="2" Text="Satara"></asp:ListItem>
            <asp:ListItem Value="3" Text="Sangli"></asp:ListItem>
            <asp:ListItem Value="4" Text="Mumbai"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btn_Submit" runat="server" CssClass="auto-style2" Height="43px" Text="Submit" Width="168px" OnClick="btn_Submit_Click" />
        <br />
    </form>
</body>
</html>
