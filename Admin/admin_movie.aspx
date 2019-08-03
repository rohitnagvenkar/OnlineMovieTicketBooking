<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_movie.aspx.vb" Inherits="Admin_admin_movie"%>

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
    .htmlbut
    {
        background-color: transparent;
            border: none;
            color: White;
            cursor: pointer;
            font-size: x-large;
            font-family: 'Arial Unicode MS';
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
            width: 38px;
            height: 15px;
        }
        .style13
        {
            width: 38px;
            height: 20px;
        }
        .style14
        {
            width: 38px;
            height: 30px;
        }
        .style15
        {
            height: 23px;
        }
        .style16
        {
            height: 23px;
            width: 184px;
        }
        .style17
        {
            width: 184px;
        }
        .style18
        {
            height: 23px;
            width: 311px;
        }
        .style19
        {
            width: 311px;
        }
        .style20
        {
            width: 38px;
            height: 308px;
        }
        .style21
        {
            height: 308px;
        }
        .style22
        {
            width: 184px;
            height: 62px;
        }
        .style23
        {
            width: 311px;
            height: 62px;
        }
        .style24
        {
            height: 62px;
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
        .style70
        {
            width: 147px;
            height: 26px;
        }
        .style71
        {
            height: 26px;
        }
        .style72
        {
            width: 232px;
            height: 26px;
        }
        .style73
        {
            width: 38px;
        }
        .style74
        {
            width: 100%;
        }
        .style75
        {
            background-color: rgb(255, 255, 255);
            margin: 0px auto;
            height: 1050px;
            width: 1024px;
        }
        .style76
        {
            width: 1024px;
        }
        .style77
        {
            width: 1024px;
            height: 414px;
        }
        .style84
        {
            height: 40px;
            width: 17px;
        }
        .style85
        {
            height: 40px;
            width: 191px;
        }
        .style86
        {
            height: 40px;
            width: 192px;
        }
        </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
      <div style="height: 43px; text-align: center; width: 1024px;" class="bg-div1">
         <table id="table1" style="border-color:White;" class="style76">
            <tr>
                <td class="style9" style="background-color: #09A0CF" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Admin Home" CssClass="button" />
                    <asp:Button ID="Button2" runat="server" Text="Manage Users" CssClass="button" />
                    <asp:Button ID="Button3" runat="server" Text="Manage Movies" CssClass="button" 
                        BackColor="#F86756"/>
                    <asp:Button ID="Button4" runat="server" Text="Manage Theaters" CssClass="button"/>
                    <asp:Button ID="Button5" runat="server" Text="Manage Shows" CssClass="button"/>
                    <asp:Button ID="Button7" runat="server" Text="Manage Seats" CssClass="button" />
                    </td>
            </tr>
            </table>
            </div>
<div class="style75">

        <table style="background-color:White; " class="style77">
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style85">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
                    </td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style84">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style85">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome"></asp:Label>
                    </td>
                <td class="style86">
                    <asp:Label ID="AdminLabel" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                <td class="style86">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <asp:Label ID="lblDateToday" runat="server" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                <asp:Label ID="lblTime" runat="server" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerTime" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
                    </td>
                <td class="style86">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False">View Site</asp:LinkButton>
                    </td>
                <td class="style86">
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" 
                        Font-Size="Large" Font-Bold="True" Font-Underline="False">Logout</asp:LinkButton>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/cross.jpg"/>
                    </td>
                <td class="style84">
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style85">
                    &nbsp;</td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style86">
                    &nbsp;</td>
                <td class="style84">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td rowspan="4" colspan="6">
                    <asp:Panel ID="Panel4" runat="server" Height="176px" ScrollBars="Both">
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="MovieSqlDataSource" Width="948px" 
                        GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="MovieID" HeaderText="MovieID" 
                                SortExpression="MovieID" />
                            <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
                                SortExpression="MovieName" />
                            <asp:BoundField DataField="MovieDetails" HeaderText="MovieDetails" 
                                SortExpression="MovieDetails" />
                            <asp:BoundField DataField="MovieImage" HeaderText="MovieImage" 
                                SortExpression="MovieImage" />
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
                <td class="style12">
                    &nbsp;</td>
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
                   
                    <asp:Panel ID="Panel1" runat="server" Height="262px" Width="975px">
                        <table style="width:100%; height: 164px;">
                            <tr>
                                <td colspan="3" 
                                    style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    ADD Entry</td>
                            </tr>
                            <tr>
                                <td class="style16">
                                    &nbsp;</td>
                                <td class="style18">
                                    &nbsp;</td>
                                <td class="style15">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style16">
                                    <asp:Label ID="Label1" runat="server" Text="MovieID"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style16">
                                    <asp:Label ID="Label2" runat="server" Text="Movie Name"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    <asp:Label ID="Label3" runat="server" Text="Movie Description"></asp:Label>
                                </td>
                                <td class="style23">
                                    <asp:TextBox ID="TextBox3" runat="server" Height="58px" TextMode="MultiLine" 
                                        Width="305px"></asp:TextBox>
                                </td>
                                <td class="style24">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style17">
                                    <asp:Label ID="Label4" runat="server" Text="Movie Image"></asp:Label>
                                </td>
                                <td class="style19">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style19">
                                    <asp:Button ID="Button9" runat="server" BackColor="#AEC642" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Add new Movie" OnClientClick = " return confirm('Do you want to add this record ?');" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                  
                    <asp:Panel ID="Panel2" runat="server" Height="121px">
                        <table style="width: 100%;">
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
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" 
                                        DataSourceID="MovieSqlDataSource" DataTextField="MovieName" 
                                        DataValueField="MovieID">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Button ID="Button10" runat="server" BackColor="#F86A5A" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Delete Entry" OnClientClick = " return confirm('Do you want to delete this record ?');" />
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
              
                    <asp:Panel ID="Panel3" runat="server" Height="271px">
                        <table class="style74">
                            <tr>
                                <td colspan="3" 
                                    style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    Update Entry</td>
                                <td style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    &nbsp;</td>
                                <td class="style35">
                                    &nbsp;</td>
                                <td class="style29">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    <asp:Label ID="Label6" runat="server" Text="Select Movie"></asp:Label>
                                </td>
                                <td class="style35">
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" 
                                        DataSourceID="MovieSqlDataSource" DataTextField="MovieID" 
                                        DataValueField="MovieID">
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
                                    &nbsp;</td>
                                <td class="style29">
                                    &nbsp;</td>
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
                                    &nbsp;<asp:Label ID="Label7" runat="server" Text="Movie Name"></asp:Label>
                                </td>
                                <td class="style34">
                                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style30">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style70">
                                    <asp:Label ID="Label8" runat="server" Text="Movie Description"></asp:Label>
                                </td>
                                <td class="style71">
                                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style72">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                                <td class="style71">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    <asp:Label ID="Label9" runat="server" Text="Movie Image"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    &nbsp;</td>
                                <td class="style35">
                                    &nbsp;</td>
                                <td class="style29">
                                    &nbsp;</td>
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
                <td class="style73">
                    &nbsp;</td>
                <td colspan="6">
                    <asp:SqlDataSource ID="MovieSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [MovieID], [MovieName], [MovieDetails], [MovieImage] FROM [Movies]">
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