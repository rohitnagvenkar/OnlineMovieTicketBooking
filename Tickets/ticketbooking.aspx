<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="ticketbooking.aspx.vb" Inherits="Tickets_ticketbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br /> <br /> <br /> <br />
    <asp:Panel ID="Panel1" runat="server" Height="855px" 
        GroupingText="Your Ticket" style="margin-bottom: 0px">
        <table style="width: 100%; height: 662px;">
            <tr>
                <td colspan="3">
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Your Selection"></asp:Label>
                    &nbsp; &nbsp;
                </td>
                <td class="style4" rowspan="6">
                    <asp:Panel ID="Panel2" runat="server" Height="634px" GroupingText="Your Total"
                        style="margin-top: 0px" BackColor="#0D1358" ForeColor="#FFFFCC">
                        <table style="width: 100%; height: 544px;">
                            <tr>
                                <td colspan="2" style="height: 35px;">
                                    <asp:Label ID="Label15" runat="server" Text="Tickets" ForeColor="#FFFFE4"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4" style="width: 202px">
                                    Ticket Cost(s)</td>
                                <td class="style4">
                                   Rs. <asp:Label ID="Label19" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4" style="height: 39px; width: 202px;">
                                    Convenience Fee</td>
                                <td class="style4" style="height: 39px">
                                     Rs. 15</td>
                            </tr>
                            <tr>
                                <td class="style4" style="width: 202px">
                                    Service Tax</td>
                                <td class="style4">
                                    Rs. 50</td>
                            </tr>
                            <tr>
                                <td style="width: 202px">
                                    Total</td>
                                <td>
                                    Rs. <asp:Label ID="Label16" runat="server">0</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 60px;" colspan="2">
                                    <asp:Label ID="Label17" runat="server" Text="Food Beverage"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 37px; width: 202px">
                                    Veg Burger
                                    <asp:Label ID="amtLabel1" runat="server"></asp:Label>
                                    </td>
                                <td class="style4" style="height: 37px">
                                    Rs. <asp:Label ID="Label26" runat="server" Text="0"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 31px; width: 202px">
                                    Large Nacho Coke<asp:Label ID="amtLabel2" runat="server"></asp:Label>
                                </td>
                                <td class="style2" style="height: 31px">
                                    Rs. <asp:Label ID="Label27" runat="server" Text="0"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 19px; width: 202px">
                                    Chicken Hot Dog<asp:Label ID="amtLabel3" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style4" style="height: 19px">
                                    Rs. <asp:Label ID="Label28" runat="server" Text="0"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 35px; width: 202px">
                                    Big Tub Combo<asp:Label ID="amtLabel4" runat="server"></asp:Label>
                                </td>
                                <td class="style4" style="height: 35px">
                                    Rs. <asp:Label ID="Label29" runat="server" Text="0"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <hr />
                                    <asp:Label ID="Label31" runat="server" Font-Size="X-Large" Text="Total Rs."></asp:Label>
                                </td>
                                <td>
                                <hr />
                                    <asp:Label ID="Label30" runat="server" Text="0" Font-Size="X-Large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:ImageButton ID="CheckOutButton" runat="server" 
                                        ImageUrl="~/Images/check_btn.jpg"/>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="width: 205px; height: 37px;">
                    <asp:Label ID="Label12" runat="server" Text="City<br/>" Font-Size="Large" 
                        ForeColor="#131A6C"></asp:Label>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td style="width: 225px; height: 37px;">
                    <asp:Label ID="Label21" runat="server" Text="Cinema<br/>" Font-Size="Large" 
                        ForeColor="#131A6C"></asp:Label>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" style="height: 37px; width: 190px;">
                    <asp:Label ID="Label22" runat="server" Text="Movie<br/>" Font-Size="Large" 
                        ForeColor="#131A6C"></asp:Label>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 205px; height: 23px;">
                    <asp:Label ID="Label23" runat="server" Text="Seat(s)<br/>" Font-Size="Large" 
                        ForeColor="#131A6C"></asp:Label>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td style="width: 225px" class="auto-style8">
                    <asp:Label ID="Label24" runat="server" Text="Date & Show Time<br/>" Font-Size="Large" 
                        ForeColor="#131A6C"></asp:Label>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td style="width: 190px; height: 23px;">
                    <asp:Label ID="Label25" runat="server" Text="Class&lt;br/&gt;" Font-Size="Large" 
                        ForeColor="#131A6C"></asp:Label>
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            
          
            <tr>
                <td colspan="3" class="style1">
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="#FF9900" 
                        Text="Add Food &amp; Beverage"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server" Font-Size="Small" 
                        Text="Our lips smacking food options, delivered to your seat!"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 205px; height: 61px;">
                    <asp:Label ID="Label10" runat="server" Text="Veg Burger...&lt;br/&gt;230 /_"></asp:Label>
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/booking/HO00101554.jpg"/>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="230">1</asp:ListItem>
                        <asp:ListItem Value="460">2</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 225px; height: 61px;">
                    <asp:Label ID="Label13" runat="server" 
                        Text="Large Nacho Coke...&lt;br/&gt;280 /_"></asp:Label>
                    <br />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/booking/HO00101557.jpg"/>
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="280">1</asp:ListItem>
                        <asp:ListItem Value="560">2</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 190px; height: 61px;">
                    <asp:Label ID="Label11" runat="server" Text="Chicken Hot Do...<br/>240 /_"></asp:Label>
                    <br />
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/booking/HO00101561.jpg" />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="240">1</asp:ListItem>
                        <asp:ListItem Value="480">2</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 205px">
                    <asp:Label ID="Label14" runat="server" Text="Big Tub Combo (W)<br/>280 /_"></asp:Label>
                    <br />
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/booking/HO00101565.jpg" />
                    <br />
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="280">1</asp:ListItem>
                        <asp:ListItem Value="560">2</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 225px">
                    &nbsp;</td>
                <td style="width: 190px">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

