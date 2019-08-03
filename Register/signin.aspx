<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="signin.aspx.vb" Inherits="Register_signin" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br /> <br /> <br /> <br />
  
       
   <asp:ScriptManager ID="ScriptManager1" runat="server"/>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <table style="width: 889px; height: 204px;margin:10px auto;">
                        
                        <tr>
                            <td class="auto-style8" 
                                style="height: 44px; background-color: #363F8E; color: #FFFFFF; font-size: xx-large;"  
                                colspan="6">
                                &nbsp;&nbsp;
                    Login
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" colspan="6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 129px; height: 23px">
                            </td>
                            <td class="auto-style8" style="width: 100px; height: 23px">
                            </td>
                            <td class="auto-style2" style="height: 23px;" colspan="2">
                                <asp:Label ID="CheckLoginEmailLabel" runat="server" ForeColor="Red" 
                                    Text="You have not registered yet" Visible="False"></asp:Label>
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                                    Text="Text boxes are null" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style9" style="width: 222px; height: 23px;">
                            </td>
                            <td class="auto-style9" style="width: 130px; height: 23px;">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12" style="width: 129px">
                                &nbsp;</td>
                            <td class="auto-style12" style="width: 100px">
                                <asp:Label ID="LoginEmailLabel" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td class="auto-style11" colspan="2">
                                <asp:TextBox ID="LoginEmailTextBox" runat="server" Width="350" 
                                    CausesValidation="True"></asp:TextBox>
                            </td>
                            <td class="auto-style13" style="width: 222px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    Display="Dynamic" ErrorMessage="Enter Email" 
                                    ForeColor="Red" ControlToValidate="LoginEmailTextBox"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style13" style="width: 130px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16" style="width: 129px; height: 62px;">
                                </td>
                            <td class="auto-style16" style="width: 100px; height: 62px;">
                                <asp:Label ID="LoginPasswordLabel" runat="server" Text="Password:"></asp:Label>
                            </td>
                            <td class="auto-style16" style="height: 62px;" colspan="2">
                                <asp:TextBox ID="LoginPasswordTextBox" runat="server" Width="350" 
                                    TextMode="Password" CausesValidation="True"></asp:TextBox>
                            </td>
                            <td class="auto-style17" style="width: 222px; height: 62px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginPasswordTextBox" 
                                Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style17" style="width: 130px; height: 62px;">
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style20" style="text-align: center; width: 129px;">
                                &nbsp;</td>
                            <td class="auto-style20" style="text-align: center; width: 100px;">
                                <input id="HiddenField1" runat="server" type="hidden" />
                            </td>
                            <td style="text-align: center; ">
                                <asp:ImageButton ID="LoginSubmit" runat="server" CssClass="button1" Text="Submit" ImageUrl="~/Images/submit.jpg"/>
                               
                                &nbsp;</td>
                            <td class="auto-style20" style="width: 125px;">
                                <input onclick="window.location.href='../Home/home.aspx';" 
                                    style="background-color: transparent" type="button" value="Cancel"></input></td>
                            <td class="auto-style21" style="width: 222px">
                            </td>
                            <td class="auto-style21" style="width: 130px">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
<ProgressTemplate>
<div class="div-Background" style="bottom: 525px; top: -1043px; right: 0px; left: 0px"></div>
<div class="div-Progress" style="bottom: 53%; top: 39%; left: 45%">
<img  alt="lading screen" src="../Images/ajax-loader.gif" style="vertical-align:middle"/>
<br />
Fetching Records Please Wait...
</div>
</ProgressTemplate>
</asp:UpdateProgress>
</ContentTemplate>
</asp:UpdatePanel>
<br />
 </asp:Content>

