﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_remove_show.aspx.vb" Inherits="Admin_Shows_admin_remove_show" %>

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
            width: 602px;
        }
        .style2
        {
            width: 435px;
        }
        .style3
        {
            width: 169px;
        }
    </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
    <div style="background-color:White;">
    
        <table style="width:100%;">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="RemoveShowSqlDataSource" ForeColor="#333333" 
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
                <td class="style1">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="RemoveSeatSqlDataSource" ForeColor="#333333" 
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
                    <asp:Button ID="Button1" runat="server" Text="Remove Show" />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Remove Seat" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="RemoveShowSqlDataSource" DataTextField="ShowID" 
                        DataValueField="ShowID">
                    </asp:DropDownList>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="RemoveSeatSqlDataSource" DataTextField="SeatID" 
                        DataValueField="SeatID">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:SqlDataSource ID="RemoveShowSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [ShowID], [MovieID], [TheaterID], [ScreenID], [ShowTime], [SeatID] FROM [Show]">
                    </asp:SqlDataSource>
                </td>
                <td class="style1">
                    <asp:SqlDataSource ID="RemoveSeatSqlDataSource" runat="server" 
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
