<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage/header.master" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="Register_signup"EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br /> <br /> <br /> <br />
    <div style="margin:10px auto; ">
    <asp:Panel ID="Panel1" runat="server" Height="520px" Width="961px">
       
    
    <table style="width: 889px; height: 204px; margin:10px auto;">
    <tr>
                <td class="auto-style12" colspan="3" style="height: 44px; background-color: #363F8E; color: #FFFFFF; font-size: xx-large;" >
                    &nbsp;&nbsp; Registration
                </td>
               
            </tr>
            <tr>
                <td class="auto-style12" style="width: 187px">
                    &nbsp;</td>
                <td class="auto-style13" style="width: 353px">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12" style="width: 187px">
            </td>
            <td class="auto-style13" style="width: 353px">
                <asp:Label ID="EmailErrorLabel" runat="server" Enabled="False" ForeColor="Red" 
                    Visible="False"></asp:Label>
            </td>
            <td class="auto-style14">
                &nbsp;
            </td>
        </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label1" runat="server" Text="Email:*"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="350" 
                        CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator0" runat="server" 
                        ErrorMessage="Email address required" ControlToValidate="EmailTextBox" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" 
                        runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" 
                        ErrorMessage="Invalid email address" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label2" runat="server" Text="Password:*"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="PasswordTextBox" runat="server" Width="350" 
                        TextMode="Password" CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator0" runat="server" 
                        ErrorMessage="Password Required" ControlToValidate="PasswordTextBox" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="PasswordCompareValidator" runat="server" 
                        ControlToValidate="PasswordTextBox" Display="Dynamic" 
                        ErrorMessage="Please choose a more cryptic password" ForeColor="Red" 
                        Operator="NotEqual" SetFocusOnError="True" ValueToCompare="password"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password:*"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" Width="350" 
                        TextMode="Password" CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequiredFieldValidator0" 
                        runat="server" ErrorMessage="Password confirmation required" 
                        ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="PasswordCompareValidator0" runat="server" 
                        ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" 
                        Display="Dynamic" ErrorMessage="Password confirmation mismatch" 
                        ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label4" runat="server" Text="Alternate Email:"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="AlternateEmailTextBox" runat="server" Width="350" 
                        CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="AlternateEmailRegularExpressionValidator" 
                        runat="server" ControlToValidate="AlternateEmailTextBox" Display="Dynamic" 
                        ErrorMessage="Invalid email address" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label5" runat="server" Text="First Name:*"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Width="350" 
                        CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="FirstNameRequiredFieldValidator" runat="server" 
                        ErrorMessage="Name Required" ControlToValidate="FirstNameTextBox" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label6" runat="server" Text="Last Name:"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="LastNameTextBox" runat="server" Width="350"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px; height: 60px;">
                    <asp:Label ID="Label10" runat="server" Text="Gender:*"></asp:Label></td>
                <td class="auto-style6" style="width: 353px; height: 60px;">
                    <asp:Panel ID="GenderPanel" runat="server" Height="50px">
                        <asp:RadioButton ID="MaleRadioButton" runat="server" Text="Male" GroupName="gender" Checked="True" /><br />
                        <asp:RadioButton ID="FemaleRadioButton" runat="server" Text="Female" GroupName="gender" />
                    </asp:Panel>
                </td>
                <td class="auto-style3" style="height: 60px"></td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label7" runat="server" Text="City:*"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="CityTextBox" runat="server" Width="350" 
                        CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        Display="Dynamic" 
                        ErrorMessage="City Required" ControlToValidate="CityTextBox" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label8" runat="server" Text="Phone No:"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="PhoneNoTextBox" runat="server" Width="350" 
                        CausesValidation="True" MaxLength="10"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px">
                    <asp:Label ID="Label9" runat="server" Text="Mobile No:*"></asp:Label></td>
                <td class="auto-style6" style="width: 353px">
                    <asp:TextBox ID="MobileNoTextBox" runat="server" Width="350" 
                        CausesValidation="True" MaxLength="12"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        Display="Dynamic" 
                        ErrorMessage="Mobile No Required" ControlToValidate="MobileNoTextBox" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 187px; height: 13px;">
                </td>
                <td class="auto-style6" style="width: 353px; height: 13px;">
                </td>
                <td class="auto-style18">
                </td>
        </tr>
            <tr>
                <td class="auto-style5" rowspan="2" style="width: 187px">&nbsp;</td>
                <td class="auto-style6" style="width: 353px; text-align: center;" rowspan="2">
                   <asp:ImageButton ID="Submit" runat="server" CssClass="button1" Text="Submit" ImageUrl="~/Images/submit.jpg" />
                    &nbsp;&nbsp;<input onclick="window.location.href='../Home/home.aspx';" 
                                    style="background-color: transparent" type="button" value="Cancel"></input></td>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
        </div>
</asp:Content>

