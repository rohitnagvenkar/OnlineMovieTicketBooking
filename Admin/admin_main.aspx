<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_main.aspx.vb" Inherits="Admin_admin_main" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .bg
    {
     background-image: url(../Admin/Images/Background/bg.jpg);
     background-size: 100%;
    }
    .bg-div1 {
            margin:10px auto;
            margin-top:10px; 
        }
        .bg-div2 {
            background-color: rgb(255, 255, 255);
           margin:0px auto;
            
        }
        .button 
       {
           background-color: #09A0CF;
            border: none;
            color: White;
            cursor: pointer;
            font-size: x-large;
            font-family: 'Arial Unicode MS';
        }

            .button:hover {
                background-color: #5BC6F0;
                border: none;
                color: White;
                cursor: pointer;
                font-size: x-large;
                font-family: 'Arial Unicode MS';
            }
            .button1 
       {
             background-image: url(../Admin/Images/button/butt1.jpg);
            border: none;
            color: White;
            cursor: pointer;
            font-size: medium;
            font-family: 'Arial Unicode MS';
        }

            .button1:hover {
                background-image: url(../Admin/Images/button/butt2.jpg);
                border: none;
                color: White;
                cursor: pointer;
                font-size: medium;
                font-family: 'Arial Unicode MS';
            }
        .style9
        {
            height: 33px;
        }
        .style10
        {
            height: 40px;
        }
        .style11
        {
            width: 53px;
        }
        .style28
        {
            width: 459px;
            height: 23px;
        }
        .style29
        {
            width: 146px;
            height: 23px;
        }
        .style30
        {
            width: 53px;
            height: 299px;
        }
        .style31
        {
            height: 299px;
        }
        .style32
        {
            height: 299px;
            width: 913px;
        }
        .style33
        {
            width: 913px;
        }
        .style35
        {
            width: 935px;
        }
        .style36
        {
            width: 170px;
        }
        .style37
        {
            width: 167px;
        }
        .style38
        {
            width: 299px;
        }
        .style39
        {
            width: 122px;
        }
        .style40
        {
            height: 53px;
            width: 913px;
        }
        .style41
        {
            width: 53px;
            height: 68px;
        }
        .style43
        {
            height: 68px;
        }
        .style44
        {
            height: 68px;
            width: 913px;
        }
        .style45
        {
            background-color: rgb(255, 255, 255);
            margin: 0px auto;
            height: 551px;
            width: 1024px;
        }
        </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
   <div style="height: 115px; text-align: center; width: 1024px;" class="bg-div1">
        <table style="height: 80px; width: 1024px;">
            <tr>
                <td class="style66">
                    </td>
                <td class="style36" rowspan="2">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
                </td>
                <td class="style37" rowspan="2">
                    &nbsp;</td>
                <td class="style67" colspan="2">
<asp:Timer ID="TimerTime" runat="server" Interval="1000">
        </asp:Timer>
                </td>
                <td class="style67" colspan="2">
                    &nbsp;</td>
                <td class="style29">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style59">
                </td>
                <td class="style28" colspan="4">
                </td>
                <td class="style29">
                </td>
            </tr>
            <tr>
                <td class="style59">
                    </td>
                <td class="style36">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="White" Text="Welcome"></asp:Label>
                </td>
                <td class="style37">
                    <asp:Label ID="AdminLabel" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="White"></asp:Label>
                </td>
                <td class="style38">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <asp:Label ID="lblDateToday" runat="server" ForeColor="White" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>&nbsp;&nbsp;
                <asp:Label ID="lblTime" runat="server" ForeColor="White" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerTime" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
                </td>
                <td class="style35" colspan="2">
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" 
                        Font-Bold="True" Font-Size="Large" Font-Underline="False">View Site</asp:LinkButton>
                </td>
                <td class="style39">
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                        Font-Size="Large" Font-Bold="True" Font-Underline="False">Logout</asp:LinkButton>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/cross.jpg"/>
                </td>
                <td class="style29">
                    </td>
            </tr>
        
        </table>
        
    </div>
    <div style="height: 43px; text-align: center; width: 1024px;" class="bg-div1">
         <table id="table1" style="width: 1030px; border-color:White;">
            <tr>
                <td class="style9" style="background-color: #09A0CF" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Admin Home" CssClass="button" 
                        BackColor="#F86554" />
                    <asp:Button ID="Button2" runat="server" Text="Manage Users" CssClass="button" />
                    <asp:Button ID="Button3" runat="server" Text="Manage Movies" CssClass="button" />
                    <asp:Button ID="Button4" runat="server" Text="Manage Theaters" CssClass="button"/>
                    <asp:Button ID="Button5" runat="server" Text="Manage Shows" CssClass="button"/>
                    <asp:Button ID="Button6" runat="server" Text="Manage Seats" CssClass="button" />
                    </td>
            </tr>
            </table>
            </div>
<div class="style45">
        
        <table style="width: 1024px; background-color:White; height: 414px;">
            <tr>
                <td class="style10" colspan="3">
                    </td>
            </tr>
            <tr>
                <td class="style30" rowspan="2">
                </td>
                <td class="style40" 
                    style="background-color: #09A0CF; font-size: x-large; color: #FFFFFF; text-align: center;">
                    Tickets Booked</td>
                <td class="style31" rowspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style32">
                    <asp:Panel ID="Panel1" runat="server" Height="168px" ScrollBars="Both">
                        <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="903px" CellPadding="4" 
                            ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" 
                                    SortExpression="UserEmail" />
                                <asp:BoundField DataField="Movie" HeaderText="Movie" SortExpression="Movie" />
                                <asp:BoundField DataField="Cinema" HeaderText="Cinema" 
                                    SortExpression="Cinema" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                                <asp:BoundField DataField="Seats" HeaderText="Seats" SortExpression="Seats" />
                                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                <asp:BoundField DataField="TicketNo" HeaderText="TicketNo" 
                                    SortExpression="TicketNo" />
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
                    </asp:Panel>
                    </td>
            </tr>
            <tr>
                <td class="style41">
                    </td>
                <td class="style44" style="text-align: center">
                   <asp:Button ID="Button10" runat="server" BackColor="#F86A5A" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Delete Entry" 
                                        
                                        OnClientClick = " return confirm('Do you want to delete this record ?');" /></td>
                <td class="style43">
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style33">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [UserBookingInfo]">
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
