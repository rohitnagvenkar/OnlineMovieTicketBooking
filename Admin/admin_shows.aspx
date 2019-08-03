<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_shows.aspx.vb" Inherits="Admin_admin_shows" %>

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
        .style15
        {
            height: 23px;
        }
        .style17
        {
            width: 184px;
            height: 33px;
        }
        .style19
        {
            width: 311px;
            height: 33px;
        }
        .style20
        {
            width: 43px;
            height: 308px;
        }
        .style21
        {
            height: 308px;
        }
        .style25
        {
            width: 185px;
        }
        .style26
        {
            width: 309px;
        }
        .style29
        {
            width: 232px;
        }
        .style30
        {
            width: 232px;
            height: 23px;
        }
        .style31
        {
            width: 147px;
        }
        .style32
        {
            height: 23px;
            width: 147px;
        }
        .style34
        {
            height: 23px;
            width: 190px;
        }
        .style35
        {
        }
        .style37
        {
            width: 100%;
            height: 195px;
        }
        .style38
        {
            height: 20px;
        }
        .style39
        {
            height: 27px;
            width: 184px;
        }
        .style40
        {
            height: 27px;
            width: 311px;
        }
        .style41
        {
            height: 27px;
        }
        .style45
        {
            height: 26px;
            width: 184px;
        }
        .style46
        {
            height: 26px;
            width: 311px;
        }
        .style47
        {
            height: 26px;
        }
        .style49
        {
            width: 43px;
        }
        .style50
        {
            background-color: rgb(255, 255, 255);
            margin: 0px auto;
            height: 1063px;
            width: 1024px;
        }
        .style52
        {
            width: 100%;
            margin-top: 25px;
        }
        .style53
        {
            margin-top: 0px;
        }
        .style54
        {
            margin-top: 14px;
        }
        .style55
        {
            width: 1024px;
            height: 414px;
        }
        .style56
        {
            height: 40px;
            width: 192px;
        }
        .style61
        {
            height: 40px;
            width: 11px;
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
                    <asp:Button ID="Button2" runat="server" Text="Manage Users" CssClass="button" />
                    <asp:Button ID="Button3" runat="server" Text="Manage Movies" CssClass="button" />
                    <asp:Button ID="Button4" runat="server" Text="Manage Theaters" CssClass="button"/>
                    <asp:Button ID="Button5" runat="server" Text="Manage Shows" CssClass="button" BackColor="#F86756"/>
                    <asp:Button ID="Button6" runat="server" Text="Manage Seats" CssClass="button" />
                    </td>
            </tr>
            </table>
            </div>
<div class="style50">

        <table style="background-color:White; " class="style55">
            <tr>
                <td class="style10" colspan="7">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style56">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome"></asp:Label>
                    </td>
                <td class="style56">
                    <asp:Label ID="AdminLabel" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                <td class="style56">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
<asp:Label ID="lblDateToday" runat="server" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                <asp:Label ID="lblTime" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                 </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerTime" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>

                    </td>
                <td class="style56">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False">View Site</asp:LinkButton>
                    </td>
                <td class="style56">
                     <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" 
                        Font-Size="Large" Font-Bold="True" Font-Underline="False">Logout</asp:LinkButton>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/cross.jpg"/>
                    </td>
                <td class="style61">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10" colspan="7">
                    </td>
            </tr>
            <tr>
                <td class="style49">
                    &nbsp;</td>
                <td colspan="6">
                    <asp:Panel ID="Panel4" runat="server" Width="951px" ScrollBars="Both">
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="ShowSqlDataSource" Width="944px" 
                        GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
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
                <td class="style20">
                    </td>
                <td class="style21" colspan="6">
                 

                    <asp:Panel ID="Panel1" runat="server" Height="287px" Width="966px">
                        <table class="style37">
                            <tr>
                                <td colspan="3" 
                                    
                                    style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold" 
                                    class="style38">
                                    ADD Entry</td>
                            </tr>
                            <tr>
                                <td class="style45">
                                    <asp:Label ID="Label1" runat="server" Text="Show ID"></asp:Label>
                                </td>
                                <td class="style46">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td class="style47">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" Display="Dynamic" EnableClientScript="False" 
                                        ErrorMessage="ID required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style39">
                                    <asp:Label ID="Label2" runat="server" Text="Movie ID"></asp:Label>
                                </td>
                                <td class="style40">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td class="style41">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style39">
                                    <asp:Label ID="Label3" runat="server" Text="Theater ID"></asp:Label>
                                </td>
                                <td class="style40">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                                <td class="style41">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style39">
                                    <asp:Label ID="Label4" runat="server" Text="Screen ID"></asp:Label>
                                </td>
                                <td class="style40">
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                                <td class="style41">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style39">
                                    <asp:Label ID="Label15" runat="server" Text="Show Time"></asp:Label>
                                </td>
                                <td class="style40">
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
                                <td class="style41">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style39">
                                    <asp:Label ID="Label16" runat="server" Text="Seat ID"></asp:Label>
                                </td>
                                <td class="style40">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </td>
                                <td class="style41">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style39">
                                    &nbsp;</td>
                                <td class="style40">
                                    &nbsp;</td>
                                <td class="style41">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style19">
                                    <asp:Button ID="Button9" runat="server" BackColor="#AEC642" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Add new Show"  OnClientClick = " return confirm('Do you want to add this record ?');" />
                                </td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table class="style52">
                            <tr>
                                <td colspan="3" 
                                    style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    Delete Entry</td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    <asp:Label ID="Label5" runat="server" Text="Select Record to delete"></asp:Label>
                                </td>
                                <td class="style26">
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="ShowSqlDataSource" DataTextField="ShowID" DataValueField="ShowID">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style26">
                                    <asp:Button ID="Button10" runat="server" BackColor="#F86A5A" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Delete Entry" OnClientClick = " return confirm('Do you want to delete this record ?');" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                   

                    <asp:Panel ID="Panel2" runat="server" CssClass="style53" Height="120px">

                    </asp:Panel>
                   

                    <asp:Panel ID="Panel3" runat="server" CssClass="style54">
                        <table style="width: 100%;">
                            <tr>
                                <td colspan="3" 
                                    style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    Update Entry</td>
                                <td style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    <asp:Label ID="Label6" runat="server" Text="Select Show"></asp:Label>
                                </td>
                                <td class="style35">
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                        DataSourceID="ShowSqlDataSource" DataTextField="ShowID" 
                                        DataValueField="ShowID" AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                                <td class="style29">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    &nbsp;</td>
                                <td class="style35">
                                    <asp:Label ID="Label10" runat="server" Text="Old Value"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:Label ID="Label11" runat="server" Text="New Value"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style32">
                                    &nbsp;<asp:Label ID="Label7" runat="server" Text="Movie ID"></asp:Label>
                                </td>
                                <td class="style34">
                                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style30">
                                    <asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    <asp:Label ID="Label8" runat="server" Text="Theater ID"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    <asp:Label ID="Label9" runat="server" Text="Screen ID"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    <asp:Label ID="Label17" runat="server" Text="Show Time"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    <asp:Label ID="Label18" runat="server" Text="Seat ID"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    &nbsp;</td>
                                <td class="style35" colspan="3">
                                    <asp:Button ID="Button11" runat="server" BackColor="#F4AB0D" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Update Entry"  OnClientClick = " return confirm('Do you want to update this record ?');" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                 

                </td>
            </tr>
            <tr>
                <td class="style49">
                    &nbsp;</td>
                <td colspan="6">
                    <asp:SqlDataSource ID="ShowSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [ShowID], [MovieID], [TheaterID], [ScreenID], [ShowTime], [SeatID] FROM [Show]">
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
