<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="movies.aspx.vb" Inherits="Movies_movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table style="width: 100%; height: 568px;">
            <tr>
                <td style="width: 45px; height: 59px;">
                    &nbsp;</td>
                <td style="height: 59px;" class="auto-style7">
                    &nbsp;</td>
                <td style="height: 59px;" class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 45px; height: 59px;">
                </td>
                <td class="auto-style7" 
                    
                    style="height: 59px; background-color: #27317F; color: #FFFFFF; font-size: xx-large;">
                    &nbsp;&nbsp;&nbsp;&nbsp; MOVIES</td>
                <td class="auto-style7" style="height: 59px">
                </td>
            </tr>
            <tr>
                <td style="width: 45px; height: 42px;">
                    </td>
                <td class="auto-style7" style="height: 42px;">
                    </td>
                <td class="auto-style7" style="height: 42px">
                    </td>
            </tr>
            <tr>
                <td style="width: 45px">
                    &nbsp; &nbsp; &nbsp;
                </td>
                <td>
                    <asp:Panel ID="Panel3" runat="server" Height="548px" Width="943px">
                            <table style="width: 938px; height: 247px;">
                                <tr>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                    <td style="width: 213px">
                                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                                            Font-Underline="False" ForeColor="Black">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image1" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton1" runat="server" 
                                            ImageUrl="~/Images/buyt.jpg" />
                                        <br />
                                    </td>
                                    <td style="width: 213px">
                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image2" runat="server"  Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/Images/buyt.jpg"/></td>
                                    <td style="width: 213px" class="style13">
                                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image3" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/Images/buyt.jpg"/>
                                        </td>
                                    <td style="width: 214px">
                                        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image13" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton13" runat="server"  ImageUrl="~/Images/buyt.jpg"/>
                                        </td>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                    <td style="width: 213px">
                                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                                            Font-Underline="False" ForeColor="Black">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image4" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton4" runat="server" 
                                            ImageUrl="~/Images/buyt.jpg" />
                                        <br />
                                    </td>
                                    <td style="width: 213px">
                                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image5" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton5" runat="server"  ImageUrl="~/Images/buyt.jpg"/></td>
                                    <td style="width: 213px" class="style13">
                                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image6" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                       <asp:ImageButton ID="ImageButton6" runat="server"  ImageUrl="~/Images/buyt.jpg"/></td>
                                    <td style="width: 214px">
                                        <asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image14" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton14" runat="server"  ImageUrl="~/Images/buyt.jpg"/>
                                        </td>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                    <td style="width: 213px">
                                        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" 
                                            Font-Underline="False" ForeColor="Black">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image7" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton7" runat="server" 
                                            ImageUrl="~/Images/buyt.jpg" />
                                        <br />
                                    </td>
                                    <td style="width: 213px">
                                        <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image8" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton8" runat="server"  ImageUrl="~/Images/buyt.jpg"/></td>
                                    <td style="width: 213px" class="style13">
                                        <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image9" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton9" runat="server"  ImageUrl="~/Images/buyt.jpg"/></td>
                                    <td style="width: 214px">
                                         <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image15" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton15" runat="server"  ImageUrl="~/Images/buyt.jpg"/>
                                        </td>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                    <td style="width: 213px">
                                        <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" 
                                            Font-Underline="False" ForeColor="Black">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image10" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton10" runat="server" 
                                            ImageUrl="~/Images/buyt.jpg" />
                                        <br />
                                    </td>
                                    <td style="width: 213px">
                                       <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image11" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                       <asp:ImageButton ID="ImageButton11" runat="server"  ImageUrl="~/Images/buyt.jpg"/></td>
                                    <td style="width: 213px" class="style13">
                                        <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image12" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton12" runat="server"  ImageUrl="~/Images/buyt.jpg"/></td>
                                    <td style="width: 214px">
                                         <asp:LinkButton ID="LinkButton16" runat="server" Font-Bold="True" ForeColor="Black" Font-Underline="False">LinkButton</asp:LinkButton>
                                        <br />
                                        <asp:Image ID="Image16" runat="server" Height="111px" Width="75px" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/Images/buyt.jpg"/>
                                        </td>
                                    <td style="width: 54px">
                                        &nbsp;</td>
                                </tr>
                            </table>

                    </asp:Panel>
                </td>
                <td>
                    &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
        </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

