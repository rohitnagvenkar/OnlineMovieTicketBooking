<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="Contact_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td colspan="4" 
                
                style="background-color: #27317F; color: #FFFFFF; font-weight: bold; font-size: large;">
                &nbsp; Feedback&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 66px; height: 23px">
            </td>
            <td class="style3" colspan="4">
            </td>
        </tr>
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td style="width: 199px">
                Email ID:</td>
            <td class="style14" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Width="285px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email ID Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td style="width: 199px">
                Name:
            </td>
            <td class="style14" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" Width="283px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 66px; height: 122px">
            </td>
            <td style="width: 199px; height: 122px">
                Feedback::</td>
            <td class="style14" style="height: 122px; " colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="97px" TextMode="MultiLine" 
                    Width="296px"></asp:TextBox>
            </td>
            <td class="style3" style="height: 122px">
            </td>
        </tr>
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td style="width: 199px">
                &nbsp;</td>
            <td class="style14" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td style="width: 199px">
                &nbsp;</td>
            <td class="style14" style="width: 171px; text-align: center;">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Images/submit.jpg" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                </input>
            &nbsp;</td>
            <td class="style14" style="width: 153px; text-align: center;">
                <input onclick="window.location.href='../Home/home.aspx';" 
                                    style="background-color: transparent" type="button" value="Cancel"></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td style="width: 199px">
                &nbsp;</td>
            <td class="style14" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 66px">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

