<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_update_show.aspx.vb" Inherits="Admin_Shows_admin_update_show" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .bg
    {
     background-color: black;
    }
        .style1
        {
            width: 464px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 464px;
            height: 23px;
        }
        .style4
        {
            width: 424px;
        }
        .style5
        {
            width: 424px;
            height: 23px;
        }
        .style6
        {
            width: 297px;
        }
        .style7
        {
            height: 23px;
            width: 297px;
        }
    </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
    <div style="background-color:white;">
    
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="UpdateShowSqlDataSource" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ShowID" HeaderText="ShowID" 
                                SortExpression="ShowID" />
                            <asp:BoundField DataField="MovieID" HeaderText="MovieID" 
                                SortExpression="MovieID" />
                            <asp:BoundField DataField="TheaterID" HeaderText="TheaterID" 
                                SortExpression="TheaterID" />
                            <asp:BoundField DataField="ScreenID" HeaderText="ScreenID" 
                                SortExpression="ScreenID" />
                            <asp:BoundField DataField="ShowTime" HeaderText="ShowTime" 
                                SortExpression="ShowTime" />
                            <asp:BoundField DataField="SeatID" HeaderText="SeatID" 
                                SortExpression="SeatID" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="UpdateSeatSqlDataSource" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="SeatID" HeaderText="SeatID" 
                                SortExpression="SeatID" />
                            <asp:BoundField DataField="SeatGold" HeaderText="SeatGold" 
                                SortExpression="SeatGold" />
                            <asp:BoundField DataField="SeatSilver" HeaderText="SeatSilver" 
                                SortExpression="SeatSilver" />
                            <asp:BoundField DataField="SeatPlatinum" HeaderText="SeatPlatinum" 
                                SortExpression="SeatPlatinum" />
                            <asp:BoundField DataField="SeatTotal" HeaderText="SeatTotal" 
                                SortExpression="SeatTotal" />
                            <asp:BoundField DataField="CostGold" HeaderText="CostGold" 
                                SortExpression="CostGold" />
                            <asp:BoundField DataField="CostSilver" HeaderText="CostSilver" 
                                SortExpression="CostSilver" />
                            <asp:BoundField DataField="CostPlatinum" HeaderText="CostPlatinum" 
                                SortExpression="CostPlatinum" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                </td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="UpdateShowSqlDataSource" DataTextField="ShowID" 
                        DataValueField="ShowID">
                    </asp:DropDownList>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="UpdateSeatSqlDataSource" DataTextField="SeatID" 
                        DataValueField="SeatID">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style3">
                </td>
                <td class="style5">
                </td>
                <td class="style7">
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="UpdateShow" />
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Update Seat" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    <asp:SqlDataSource ID="UpdateShowSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [ShowID], [MovieID], [TheaterID], [ScreenID], [ShowTime], [SeatID] FROM [Show]">
                    </asp:SqlDataSource>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="UpdateSeatSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [SeatID], [SeatGold], [SeatSilver], [SeatPlatinum], [SeatTotal], [CostGold], [CostSilver], [CostPlatinum] FROM [Seats]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
