<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_theater.aspx.vb" Inherits="Admin_admin_theater" %>

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
        .style11
        {
            width: 33px;
        }
        .style12
        {
            width: 33px;
            height: 15px;
        }
        .style13
        {
            width: 33px;
            height: 20px;
        }
        .style14
        {
            width: 33px;
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
            width: 33px;
            height: 308px;
        }
        .style21
        {
            height: 308px;
        }
        .style22
        {
            width: 184px;
            height: 36px;
        }
        .style23
        {
            width: 311px;
            height: 36px;
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
        .style36
        {
            height: 36px;
        }
        .style37
        {
            width: 184px;
            height: 24px;
        }
        .style38
        {
            width: 311px;
            height: 24px;
        }
        .style39
        {
            height: 24px;
        }
        .style40
        {
            width: 1024px;
            height: 414px;
        }
        .style41
        {
            background-color: rgb(255, 255, 255);
            margin: 0px auto;
            height: 998px;
            width: 1024px;
        }
        .style42
        {
            width: 100%;
            height: 238px;
        }
        .style43
        {
            height: 40px;
            width: 193px;
        }
        .style44
        {
            height: 40px;
            width: 194px;
        }
        .style48
        {
            height: 40px;
            width: 12px;
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
                    <asp:Button ID="Button4" runat="server" Text="Manage Theaters" CssClass="button" BackColor="#F86756"/>
                    <asp:Button ID="Button5" runat="server" Text="Manage Shows" CssClass="button"/>
                    <asp:Button ID="Button6" runat="server" Text="Manage Seats" CssClass="button" />
                    </td>
            </tr>
            </table>
            </div>

<div class="style41">
        <table style="background-color:White; " class="style40">
            <tr>
                <td class="style10" colspan="7">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style43">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome"></asp:Label>
                    </td>
                <td class="style44">
                    <asp:Label ID="AdminLabel" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                <td class="style44">

                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                <asp:Label ID="lblDateToday" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblTime" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerTime" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>

                    </td>
                <td class="style44">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False">View Site</asp:LinkButton>
                    </td>
                <td class="style44">
                     <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" 
                        Font-Size="Large" Font-Bold="True" Font-Underline="False">Logout</asp:LinkButton>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/cross.jpg"/>
                    </td>
                <td class="style48">
                    </td>
            </tr>
            <tr>
                <td class="style10" colspan="7">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td rowspan="3" colspan="6">
                    <asp:Panel ID="Panel4" runat="server" ScrollBars="Both" Width="973px">
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="TheaterSqlDataSource" Width="956px" 
                        GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="TheaterID" HeaderText="TheaterID" 
                                SortExpression="TheaterID" />
                            <asp:BoundField DataField="TheaterName" HeaderText="TheaterName" 
                                SortExpression="TheaterName" />
                            <asp:BoundField DataField="TheaterLocation" HeaderText="TheaterLocation" 
                                SortExpression="TheaterLocation" />
                            <asp:BoundField DataField="TheaterNumOfScreen" HeaderText="TheaterNumOfScreen" 
                                SortExpression="TheaterNumOfScreen" />
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
                    
                    <asp:Panel ID="Panel1" runat="server" Height="241px" Width="991px">
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
                                    <asp:Label ID="Label1" runat="server" Text="TheaterID"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style16">
                                    <asp:Label ID="Label2" runat="server" Text="Theater Name"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    <asp:Label ID="Label4" runat="server" Text="Theater Location"></asp:Label>
                                </td>
                                <td class="style23">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                                <td class="style36">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="Label15" runat="server" Text="Nos Of Screen"></asp:Label>
                                </td>
                                <td class="style38">
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
                                <td class="style39">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    &nbsp;</td>
                                <td class="style38">
                                    &nbsp;</td>
                                <td class="style39">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style19">
                                    <asp:Button ID="Button9" runat="server" BackColor="#AEC642" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Add new Theater" OnClientClick = " return confirm('Do you want to add this record ?');"  />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                 

                  

                    <asp:Panel ID="Panel2" runat="server" Height="110px">
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
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="TheaterSqlDataSource" DataTextField="TheaterName" 
                                        DataValueField="TheaterID">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Button ID="Button10" runat="server" BackColor="#F86A5A" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Delete Entry" OnClientClick = " return confirm('Do you want to delete this record ?');"  />
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

              
                    <asp:Panel ID="Panel3" runat="server" Height="253px">
                        <table class="style42">
                            <tr>
                                <td colspan="4" 
                                    
                                    style="background-color: #5BC5EF; color: #000000; font-size: large; font-weight: bold">
                                    Update Entry</td>
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
                                    <asp:Label ID="Label6" runat="server" Text="Select Theater"></asp:Label>
                                </td>
                                <td class="style35">
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                        DataSourceID="TheaterSqlDataSource" DataTextField="TheaterName" 
                                        DataValueField="TheaterID">
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
                                    &nbsp;<asp:Label ID="Label7" runat="server" Text="Theater Name"></asp:Label>
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
                                <td class="style31">
                                    <asp:Label ID="Label8" runat="server" Text="Theater Location"></asp:Label>
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
                                    <asp:Label ID="Label9" runat="server" Text="Nos Of Screen"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
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
                                        Font-Size="Large" ForeColor="#FFFFCC" Text="Update Entry" OnClientClick = " return confirm('Do you want to update this record ?');"  />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
         
                    

                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td colspan="6">
                    <asp:SqlDataSource ID="TheaterSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        
                        SelectCommand="SELECT * FROM [Theater]">
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