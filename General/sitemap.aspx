<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="sitemap.aspx.vb" Inherits="General_sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="545px">
        <table style="width:997px; height: 142px;">
            <tr>
                <td style="width: 48px; height: 46px">
                    &nbsp;</td>
                <td class="style14" style="width: 162px; height: 46px">
                    &nbsp;</td>
                <td style="height: 46px; width: 72px">
                    &nbsp;</td>
                <td colspan="7" style="height: 46px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 48px; height: 46px">
                    &nbsp;</td>
                <td class="style14" colspan="9" 
                    
                    style="height: 46px; background-color: #363F8E; font-size: x-large; font-weight: bold; color: #FFFFFF;">
                    &nbsp; Site Map&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 48px; height: 46px">
                    &nbsp;</td>
                <td class="style14" colspan="7" style="height: 46px">
                    &nbsp;</td>
                <td colspan="2" style="height: 46px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 48px">
                    &nbsp;</td>
                <td class="style14" 
                    style="width: 162px; background-color: #27317F; color: #DDCB08; font-size: large; font-weight: bold;">
                    &nbsp; General&nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td style="width: 162px; background-color: #27317F; color: #DDCB08; font-size: large; font-weight: bold;">
                    &nbsp; Tickets&nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td style="width: 162px; background-color: #27317F; color: #DDCB08; font-size: large; font-weight: bold;">
                    &nbsp; Movies&nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td style="width: 162px; background-color: #27317F; color: #DDCB08; font-size: large; font-weight: bold;" 
                    colspan="2">
                    &nbsp; Cinemas&nbsp;</td>
                <td style="width: 73px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 48px; height: 80px;">
                </td>
                <td class="style14" 
                    
                    style="width: 162px; background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold; height: 80px;">
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="False" ForeColor="#FF9900" />
                        <Nodes>
                            <asp:TreeNode Expanded="True" Text="General" Value="General">
                                <asp:TreeNode NavigateUrl="~/Home/home.aspx" Text="Home" Value="Home">
                                </asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/Contact/contact.aspx" Text="Connect with Us" 
                                    Value="New Node"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/General/privacy.aspx" Text="Privacy Ploicy" 
                                    Value="New Node"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/General/terms-of-use.aspx" Text="Terms of Use" 
                                    Value="New Node"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/General/termsandconditions.aspx" 
                                    Text="Terms &amp; Conditions" Value="New Node"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/General/sitemap.aspx" Text="Site Map" 
                                    Value="New Node"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="False" ForeColor="Black" 
                            HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 72px; height: 80px;">
                </td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold; width: 162px; height: 80px;">
                    <asp:TreeView ID="TreeView2" runat="server" ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="False" ForeColor="#FF9900" />
                        <Nodes>
                            <asp:TreeNode Expanded="True" Text="Tickets" Value="Tickets">
                                <asp:TreeNode NavigateUrl="~/Tickets/tickets.aspx" Text="Purchase" Value="Home">
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="False" ForeColor="Black" 
                            HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 72px; height: 80px;">
                </td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold; height: 80px;">
                    <asp:TreeView ID="TreeView3" runat="server" ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="False" ForeColor="#FF9900" />
                        <Nodes>
                            <asp:TreeNode Expanded="True" Text="Movies" Value="Movies">
                                <asp:TreeNode NavigateUrl="~/Movies/movies.aspx" Text="All Movies" Value="Home">
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="False" ForeColor="Black" 
                            HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 72px; height: 80px;">
                </td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold; height: 80px;" 
                    colspan="2">
                    <asp:TreeView ID="TreeView4" runat="server" ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="False" ForeColor="#FF9900" />
                        <Nodes>
                            <asp:TreeNode Expanded="True" Text="Cinemas" Value="Cinemas">
                                <asp:TreeNode NavigateUrl="~/Theaters/theaters.aspx" Text="Cinema Locator" 
                                    Value="New Node"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="False" ForeColor="Black" 
                            HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 73px; height: 80px;">
                </td>
            </tr>
            <tr>
                <td style="width: 48px; height: 24px;">
                </td>
                <td class="style14" 
                    style="width: 162px; background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold; height: 24px;">
                </td>
                <td style="width: 72px; height: 24px;">
                </td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold; width: 162px;">
                </td>
                <td style="width: 72px; height: 24px;">
                </td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                </td>
                <td style="width: 72px; height: 24px;">
                </td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;" 
                    colspan="2">
                </td>
                <td style="width: 73px; height: 24px;">
                </td>
            </tr>
            <tr>
                <td style="width: 48px">
                    &nbsp;</td>
                <td class="style14" 
                    style="width: 162px; background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                    &nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold; width: 162px;">
                    &nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                    &nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td colspan="2" 
                    style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                    &nbsp;</td>
                <td style="width: 73px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 48px">
                    &nbsp;</td>
                <td class="style14" 
                    style="background-color: #27317F; color: #DDCB08; font-size: large; font-weight: bold;">
                    &nbsp; Events&nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td style="background-color: #27317F; color: #DDCB08; font-size: large; font-weight: bold; ">
                    &nbsp; Corporate&nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                    &nbsp;</td>
                <td style="width: 72px">
                    &nbsp;</td>
                <td colspan="2" 
                    style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                    &nbsp;</td>
                <td style="width: 73px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 48px; height: 23px;">
                </td>
                <td class="style14" style="height: 23px;">
                    <asp:TreeView ID="TreeView5" runat="server" Font-Bold="True" ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="False" ForeColor="#FF9900" />
                        <Nodes>
                            <asp:TreeNode Expanded="True" Text="Events" Value="Events">
                                <asp:TreeNode NavigateUrl="~/events/movieevents.aspx" Text="Movie Events" 
                                    Value="Movie Events"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="False" ForeColor="Black" 
                            HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 72px; height: 23px;">
                </td>
                <td class="style3">
                    <asp:TreeView ID="TreeView6" runat="server" Font-Bold="True" ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="False" ForeColor="#FF9900" />
                        <Nodes>
                            <asp:TreeNode Expanded="True" Text="Corporate" Value="Corporate">
                                <asp:TreeNode NavigateUrl="~/About/about.aspx" Text="About Us" Value="New Node">
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="False" ForeColor="Black" 
                            HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td style="width: 72px; height: 23px;">
                </td>
                <td class="style3" 
                    style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                </td>
                <td style="width: 72px; height: 23px;">
                </td>
                <td class="style3" colspan="2" 
                    style="background-color: #FFFFFF; color: #5C6165; font-size: medium; font-weight: bold;">
                </td>
                <td style="width: 73px; height: 23px;">
                </td>
            </tr>
            <tr>
                <td style="width: 48px; height: 23px;">
                    </td>
                <td class="style14" style="width: 162px; height: 23px;">
                    </td>
                <td style="width: 72px; height: 23px;">
                    </td>
                <td colspan="7" class="style3">
                    </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <br />
</asp:Content>

