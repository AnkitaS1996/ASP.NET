<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataInDropdown.aspx.cs" Inherits="Popular_DataIn_DropDown.DataInDropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: larger;
        }
    </style>
</head>
<body style="height: 321px">
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="DropDownListData" runat="server" CssClass="auto-style1" Height="36px" Width="171px">
            </asp:DropDownList>

            <asp:Label ID="lbl_RowData" runat="server" Font-Size="Large" Text="Label" Visible="False"></asp:Label>

            <br />

        </div>
        <br />
        <strong>
            <asp:Button ID="Btn_Submit" runat="server" CssClass="auto-style1" Font-Size="Larger" Height="45px" OnClick="Btn_Submit_Click" Text="Submit" Width="165px" />
        </strong>
        <strong>
            <asp:Button ID="Btn_Refresh" runat="server" CssClass="auto-style1" Font-Size="Larger" Height="45px" OnClick="Btn_Refresh_Click" Text="Refresh" Width="165px" />
        </strong>

        <br />
        <br />

        <asp:GridView ID="GridViewData" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="559px">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
        <asp:Label ID="lbl_Name" runat="server" Text="Name" Font-Size="Larger"></asp:Label>
        <asp:TextBox ID="txt_Data" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />

        <div>
            <asp:Label ID="lbl_Gender" runat="server" Text="Gender" Font-Size="Larger"></asp:Label>

            <asp:RadioButton ID="Male" runat="server" GroupName="gender" Font-Size="Larger" />
            <asp:Label for="Male" runat="server" Text="Male" Font-Size="Larger"></asp:Label>

            <asp:RadioButton ID="Female" runat="server" GroupName="gender" Font-Size="Larger" />
            <asp:Label for="Female" runat="server" Text="Female" Font-Size="Larger"></asp:Label>
        </div>
    </form>
</body>
</html>
