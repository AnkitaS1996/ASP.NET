<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crud_Data_Operation.aspx.cs" Inherits="Popular_DataIn_DropDown.Crud_Data_Operation" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 124px;
        }
        .auto-style3 {
            width: 124px;
            font-size: larger;
            height: 53px;
        }
        .auto-style4 {
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>

            <asp:DropDownList ID="DropDownListData" runat="server" CssClass="auto-style1" Height="36px" Width="171px">
            </asp:DropDownList>

            <asp:Label ID="lbl_RowData" runat="server" Font-Size="Large" Text="Label" Visible="False"></asp:Label>

            <br />

        </div>
        <br />
        <strong>
            <asp:Button ID="Btn_Submit" runat="server" CssClass="auto-style1" Font-Size="Larger" Height="45px"  Text="Submit" Width="165px" OnClick="Btn_Submit_Click" />
        </strong>
        <strong>
            <asp:Button ID="Btn_Refresh" runat="server" CssClass="auto-style1" Font-Size="Larger" Height="45px" Text="Refresh" Width="165px" OnClick="Btn_Refresh_Click" />
        </strong>

        <br />
        <br />

        <asp:GridView ID="GridViewData" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="559px" OnRowDataBound="GridViewData_RowDataBound" OnSelectedIndexChanged="GridViewData_SelectedIndexChanged" AutoGenerateSelectButton="True">
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

        <div> 
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <strong>ID</strong></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_ID" runat="server" Font-Size="Larger"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_Name" runat="server" Text="Name" Font-Size="Larger"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Data" runat="server" Font-Size="Larger"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">

                        <asp:Label ID="lbl_Gender" runat="server" Text="Gender" Font-Size="Larger"></asp:Label>

                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonListGender" Font-Size="Larger" runat="server" RepeatDirection="Horizontal" Width="271px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">

                        <strong>Age</strong></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_Age" runat="server" Font-Size="Larger"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">

                        <strong>Salary</strong></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_Salary" runat="server" Font-Size="Larger"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <%--<asp:RadioButton ID="Male" runat="server" GroupName="gender" Font-Size="Larger" />
            <asp:Label for="Male" runat="server" Text="Male" Font-Size="Larger"></asp:Label>

            <asp:RadioButton ID="Female" runat="server" GroupName="gender" Font-Size="Larger" />
            <asp:Label for="Female" runat="server" Text="Female" Font-Size="Larger"></asp:Label>--%>
        </div>
    </form>
</body>
</html>
