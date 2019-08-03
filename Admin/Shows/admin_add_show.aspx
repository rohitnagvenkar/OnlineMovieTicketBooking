<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_add_show.aspx.vb" Inherits="Admin_Shows_admin_add_show" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
    .bg
    {
     background-color: black;
    }
         .style3
         {
             width: 853px;
         }
         .style5
         {
             width: 853px;
             height: 22px;
         }
         .style6
         {
             height: 22px;
         }
         .style7
         {
             width: 191px;
         }
         .style8
         {
             width: 191px;
             height: 22px;
         }
         .style9
         {
             width: 122px;
         }
         .style10
         {
             width: 478px;
         }
         .style11
         {
             width: 191px;
             height: 26px;
         }
         .style12
         {
             width: 853px;
             height: 26px;
         }
         .style13
         {
             height: 26px;
         }
    </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
    <div style="background-color:White;">

        <table style="width:100%;">
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style9">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="AddShowSqlDataSource" ForeColor="#333333" 
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
                <td class="style10">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="AddSeatSqlDataSource" ForeColor="#333333" 
                        GridLines="None" style="margin-left: 0px">
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
                    <asp:Button ID="Button1" runat="server" Text="Add Shows" />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Add Seats" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    </td>
                <td class="style12" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="style13">
                    </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                </td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:SqlDataSource ID="AddShowSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [ShowID], [MovieID], [TheaterID], [ScreenID], [ShowTime], [SeatID] FROM [Show]">
                    </asp:SqlDataSource>
                </td>
                <td class="style3" colspan="2">
                    <asp:SqlDataSource ID="AddSeatSqlDataSource" runat="server" 
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
