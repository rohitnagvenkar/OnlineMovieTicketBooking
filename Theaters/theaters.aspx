<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="theaters.aspx.vb" Inherits="Theaters_theater" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <br />
        <asp:Panel ID="Panel1" runat="server" Height="613px">
        <br />
            <table style="width: 100%; height: 477px;">
                <tr>
                    <td class="auto-style7" style="width: 90px">
                    </td>
                    <td class="auto-style7" 
                        style="background-color: #27317F; color: #FFFFFF; font-size: x-large; font-weight: bold;" 
                        colspan="9">
                        &nbsp;&nbsp;&nbsp; CINEMA LOCATOR</td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="height: 33px; width: 90px">
                        &nbsp;
                    </td>
                    <td class="auto-style7" style="height: 33px; ">
                        &nbsp;</td>
                    <td class="auto-style7" colspan="8" style="height: 33px; ">
                        &nbsp;</td>
                    <td class="auto-style7" style="height: 33px">
                        &nbsp;
                    </td>
                </tr>


                <tr>
                    <td style="height: 29px; width: 90px;">
                    </td>
                    <td style="height: 29px; width: 961px; ">
                        &nbsp;</td>
                    <td colspan="7" 
                        style="height: 29px; width: 961px; background-color: #333538; color: #FFFFFF; font-size: large; font-weight: bold;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="cinema and place"></asp:Label>
                    </td>
                    <td style="height: 29px; width: 876px;">
                    </td>
                    <td style="height: 29px" class="auto-style7">
                    </td>
                </tr>
                <tr>
                    <td style="height: 115px; width: 90px;">
                        &nbsp;</td>
                    <td style="height: 115px; ">
                        &nbsp;</td>
                    <td colspan="7" 
                        style="height: 115px; background-color: #E2E2E2; width: 961px; text-align:center;">
                        <asp:Image ID="Image1" runat="server" Height="206px" 
                            imageurl="~/Images/Content/cinema.jpg" Width="836px" />
                    </td>
                    <td class="auto-style7" style="height: 115px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 35px; width: 90px;">
                        &nbsp;</td>
                    <td style="height: 35px;">
                        &nbsp;</td>
                    <td colspan="7" style="height: 35px; background-color: #E2E2E2; ">
                        &nbsp;</td>
                    <td class="auto-style7" style="height: 35px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 35px; width: 90px;">
                    </td>
                    <td style="height: 35px; width: 754px;">
                        &nbsp;</td>
                    <td style="height: 35px; background-color: #E2E2E2; width: 754px;">
                        &nbsp;</td>
                    <td style="background-color: #000000; width: 308px;">
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Select City"></asp:Label>
                    </td>
                    <td style="background-color: #000000; width: 250px;">
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" DataSourceID="CitySqlDataSource" 
                            DataTextField="TheaterLocation" DataValueField="TheaterLocation">
                            <asp:ListItem Value="0">&lt;----SELECT----&gt;</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="background-color: #000000; width: 341px;">
                        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Select Cinema"></asp:Label>
                    </td>
                    <td style="background-color: #000000; width: 441px;">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>&lt;----SELECT----&gt;</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="background-color: #000000; width: 489px;">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/search.jpg"/>
                    </td>
                    <td style="height: 35px; background-color: #E2E2E2; width: 961px; text-align: center;">
                        <asp:Image ID="Image21" runat="server" Height="20px" 
                            ImageUrl="~/Images/darrow.jpg" Visible="False" Width="20px" />
                    </td>
                    <td class="auto-style7" style="height: 35px">
                    </td>
                </tr>
                <tr>
                    <td style="height: 29px; width: 90px;">
                        &nbsp;
                    </td>
                    <td style="height: 29px; width: 961px; color: #12198A; font-size: x-large; font-weight: bold;">
                        &nbsp;</td>
                    <td colspan="7" 
                        style="height: 29px; background-color: #E2E2E2; width: 961px; color: #12198A; font-size: x-large; font-weight: bold;">
                        &nbsp;Location<br />
                    </td>
                    <td style="height: 29px; ">
                        </td>
                    <td class="auto-style7" style="height: 29px">
                        &nbsp;
                    </td>
                </tr>


                <tr>
                    <td style="width:90px; height: 64px;">
                        </td>
                    <td 
                        
                        
                        style="height: 64px; width: 961px; color: #12198A; font-size: x-large; font-weight: bold;">
                        &nbsp;</td>
                    <td colspan="7" 
                        style="height: 64px; background-color: #E2E2E2; width: 961px; color: #12198A; font-size: x-large; font-weight: bold;">
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">
                            <br />
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                            <br />
                            State:
                            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                            <br />
                            Phone-No:
                            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                            <br/>
                        </asp:PlaceHolder>
                    </td>
                    <td style="height: 64px; " class="auto-style7">
                        </td>
                    <td class="auto-style7" style="height: 64px">
                        </td>
                </tr>
               


            </table>
            <br />
            <asp:SqlDataSource ID="TheaterSqlDataSource" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="CitySqlDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [TheaterLocation] FROM [Theater]">
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
    </ContentTemplate>
        </asp:UpdatePanel>


</asp:Content>

