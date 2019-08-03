<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_users.aspx.vb" Inherits="Admin_admin_users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .style12
        {
            width: 40px;
            height: 15px;
        }
        .style13
        {
            width: 40px;
            height: 20px;
        }
        .style14
        {
            width: 40px;
            height: 30px;
        }
        .style20
        {
            width: 40px;
            height: 148px;
        }
        .style21
        {
            height: 148px;
        }
        .style25
        {
            width: 185px;
        }
        .style26
        {
            width: 309px;
        }
        .style30
        {
            width: 40px;
        }
        .style31
        {
            width: 100%;
            height: 111px;
        }
        .style32
        {
            width: 1024px;
            height: 414px;
        }
        .style33
        {
            height: 40px;
            width: 192px;
        }
        .style35
        {
            height: 40px;
            width: 193px;
        }
        .style38
        {
            height: 40px;
            width: 11px;
        }
        .style39
        {
            background-color: rgb(255, 255, 255);
            margin: 0px auto;
            height: 599px;
            width: 1024px;
        }
        </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
    <div style="height: 43px; text-align: center; width: 1024px;" class="bg-div1">
         <table id="table1" style="width: 1024px; border-color:White;">
            <tr>
                <td class="style9" style="background-color: #09A0CF" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Admin Home" CssClass="button" />
                    <asp:Button ID="Button2" runat="server" Text="Manage Users" CssClass="button" BackColor="#F86756"/>
                    <asp:Button ID="Button3" runat="server" Text="Manage Movies" CssClass="button" />
                    <asp:Button ID="Button4" runat="server" Text="Manage Theaters" CssClass="button"/>
                    <asp:Button ID="Button5" runat="server" Text="Manage Shows" CssClass="button"/>
                    <asp:Button ID="Button6" runat="server" Text="Manage Seats" CssClass="button" />
                    </td>
            </tr>
            </table>
            </div>
<div class="style39">

        <table style="background-color:White; " class="style32">
            <tr>
                <td class="style10" colspan="7">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style33">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome"></asp:Label>
                    </td>
                <td class="style33">
                    <asp:Label ID="AdminLabel" runat="server" Font-Bold="True" Font-Size="Large" ></asp:Label>
                    </td>
                <td class="style35">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
<asp:Label ID="lblDateToday" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblTime" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerTime" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
</td>
                <td class="style35">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False">View Site</asp:LinkButton>
                    </td>
                <td class="style35">
                     <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" 
                        Font-Size="Large" Font-Bold="True" Font-Underline="False">Logout</asp:LinkButton>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/cross.jpg"/>
                    </td>
                <td class="style38">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10" colspan="7">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td rowspan="3" colspan="6">
                    <asp:Panel ID="Panel4" runat="server" ScrollBars="Both" Width="970px">
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="UserSqlDataSource" Width="948px" 
                        GridLines="Horizontal" Height="148px" style="margin-left: 0px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="rEmail" HeaderText="rEmail" 
                                SortExpression="rEmail" />
                            <asp:BoundField DataField="rPassword" HeaderText="rPassword" 
                                SortExpression="rPassword" />
                            <asp:BoundField DataField="rConfirmPassword" HeaderText="rConfirmPassword" 
                                SortExpression="rConfirmPassword" />
                            <asp:BoundField DataField="rAlternateEmail" HeaderText="rAlternateEmail" 
                                SortExpression="rAlternateEmail" />
                            <asp:BoundField DataField="rFirstName" HeaderText="rFirstName" 
                                SortExpression="rFirstName" />
                            <asp:BoundField DataField="rLastName" HeaderText="rLastName" 
                                SortExpression="rLastName" />
                            <asp:BoundField DataField="rGender" HeaderText="rGender" 
                                SortExpression="rGender" />
                            <asp:BoundField DataField="rCity" HeaderText="rCity" SortExpression="rCity" />
                            <asp:BoundField DataField="rPhoneNo" HeaderText="rPhoneNo" 
                                SortExpression="rPhoneNo" />
                            <asp:BoundField DataField="rMobileNo" HeaderText="rMobileNo" 
                                SortExpression="rMobileNo" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>

                     </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    </td>
                <td class="style21" colspan="6">
                 <asp:Panel ID="Panel2" runat="server">
                        <table class="style31">
                            <tr>
                                <td colspan="3" 
                                    style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    Delete Entry</td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style26">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    <asp:Label ID="Label5" runat="server" Text="Select Record to delete"></asp:Label>
                                </td>
                                <td class="style26">
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="UserSqlDataSource" DataTextField="rEmail" DataValueField="rEmail">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Button ID="Button10" runat="server" BackColor="#F86A5A" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" 
                                        OnClientClick=" return confirm('Do you want to delete this record ?');" 
                                        Text="Delete Entry" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style26">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>

                    </asp:Panel>
                   

                     </td>
            </tr>
            <tr>
                <td class="style30">
                    &nbsp;</td>
                <td colspan="6">
                    <asp:SqlDataSource ID="UserSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [register]">
                    </asp:SqlDataSource>
<asp:Timer ID="TimerTime" runat="server" Interval="1000">
        </asp:Timer>
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
