<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="tickets.aspx.vb" Inherits="Tickets_tickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> 
    <asp:Panel ID="Panel1" runat="server" Height="680px" style="margin: 10px auto">
        <table style="width: 97%; height: 742px; margin-left: 26px;">
            <tr>
                <td style="height: 44px; background-color: #363F8E; color: #FFFFFF; font-size: xx-large;" 
                    colspan="3">
                    Buy Tickets</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2" style="height: 20px; ">
                </td>
                <td class="auto-style4" style="height: 20px; ">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #858585; height: 7px;" colspan="2" 
                    class="auto-style4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="MovieNameLabel" runat="server" Font-Bold="True" 
                        Font-Size="Large" ForeColor="White"></asp:Label>
&nbsp;
                </td>
                <td class="auto-style4" style="height: 7px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2">
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="height: 45px; background-color: #262626; font-size: xx-large; color: #FFB733; font-weight: bold;">
                    SELECT CINEMA &amp; SHOW DETAILS</td>
                <td style="height: 45px; ">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18" style="height: 10px; ">
                </td>
                <td class="auto-style18" style="height: 10px; ">
                </td>
                <td class="auto-style18" style="height: 10px; ">
                </td>
            </tr>
            <tr>
                <td style="height: 45px;"></td>
                <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                <asp:Panel ID="Panel3" runat="server">
                <td style="background-color: #363636; color: #FFFFFF; font-weight: bold; font-size: large; width: 332px;" rowspan="2">
                    &nbsp;&nbsp;Displaying time for
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="18px" Width="155px">
                    </asp:DropDownList><br />
                    <br /> &nbsp;
                    <asp:ListBox ID="ListBox1" runat="server" CssClass="lstbx" Height="139px" 
                        Width="305px"></asp:ListBox>
                   <br /> &nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Select" />&nbsp;&nbsp;
                    <asp:Label ID="listbxlabel" runat="server" ForeColor="Red" Text="select the above fields please" Visible="False"></asp:Label>
                </td>
                 </asp:Panel>
                 </asp:PlaceHolder>

                <td style="height: 45px; ">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="height: 189px">
                    <asp:Label ID="Label1" runat="server" Text="Select Theater"></asp:Label><br />
                    <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="True" 
                        CausesValidation="True" style="margin-left: 0px" 
                        Width="249px">
                        <asp:ListItem Selected="True" Value="0">&lt;-----Select-----&gt;</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="theatererrorLabel" runat="server" ForeColor="Red" 
                        Text="select theater please" Visible="False"></asp:Label>
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="Select" />
                </td>
                            <td style="width: 332px; height: 189px; text-align: center;">
                                <asp:Image ID="Image21" runat="server" Height="113px" 
                                    ImageUrl="~/Images/darrow.jpg" Width="124px" Visible="false"/>
                                </td>
            </tr>
           

            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
           
          
            <tr>
                <td class="auto-style7" colspan="3" style="height: 88px">
                   <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                    <asp:Panel ID="Panel2" runat="server">
                        <table style="width:100%; height: 198px;">
                            <tr>
                                <td style="width: 111px">
                                    <asp:Label ID="Label7" runat="server" Text="Select Class" Visible="False"></asp:Label>
                                </td>
                                <td style="width: 116px">
                                    <asp:Label ID="Label11" runat="server" Text="Gold Rs. "></asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                                        GroupName="class" Visible="True" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 111px">
                                    &nbsp;</td>
                                <td style="width: 116px">
                                    <asp:Label ID="Label12" runat="server" Text="Silver Rs. "></asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="class" 
                                        Visible="True" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 111px">
                                    &nbsp;</td>
                                <td style="width: 116px">
                                    <asp:Label ID="Label13" runat="server" Text="Platinum Rs. "></asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="class" 
                                        Visible="True" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 111px">
                                    &nbsp;</td>
                                <td style="width: 116px">
                                    &nbsp;</td>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 111px">
                                    <asp:Label ID="Label14" runat="server" Text="Select Seat"></asp:Label>
                                </td>
                                <td colspan="3">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                                        DataTextField="123" Height="16px" Visible="False" Width="176px">
                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                        <asp:ListItem Value="3">3</asp:ListItem>
                                        <asp:ListItem Value="4">4</asp:ListItem>
                                        <asp:ListItem Value="5">5</asp:ListItem>
                                        <asp:ListItem Value="6">6</asp:ListItem>
                                        <asp:ListItem Value="7">7</asp:ListItem>
                                        <asp:ListItem Value="8">8</asp:ListItem>
                                        <asp:ListItem Value="9">9</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="SeatLabel" runat="server"  Text="Select seat please" ForeColor="Red" Visible="false"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 111px">
                                    &nbsp;</td>
                                <td colspan="3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 111px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 203px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/Images/submit.jpg" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                     </asp:PlaceHolder>

                  </td>
            </tr>
           
          




            <tr>
                <td style="height: 40px;" colspan="3">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="Red" 
                        Text="You need to login to book  ticket" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HiddenField ID="SGold" runat="server" />
                    <asp:HiddenField ID="STotal" runat="server" />
                    <asp:HiddenField ID="CPlatinum" runat="server" />
                    <asp:HiddenField ID="CGold" runat="server" />
                </td>
                <td style="width: 332px">
                    <asp:HiddenField ID="SSilver" runat="server" />
                    <asp:HiddenField ID="SPlatinum" runat="server" />
                    <asp:HiddenField ID="CSilver" runat="server" />
                    <asp:HiddenField ID="ShowID" runat="server" />
                </td>
                <td style="width: 332px">
                    &nbsp;</td>
            </tr>
        </table>
       
       
       
       
        
        
      
    </asp:Panel><br /><br />
</asp:Content>

