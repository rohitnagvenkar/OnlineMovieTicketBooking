<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cities.aspx.vb" Inherits="Cities_cities" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>OMTB</title>
    <style type="text/css">
      

        .bg {
            background-color: black;
            
        }

        .auto-style1 {
            background-color: #765203;
            -webkit-border-radius: 15px;
            -moz-border-radius: 15px;
            border-radius: 15px;
            width: 500px;
            height: 400px;
        }

        .auto-style2 {
            width: 166px;
        }

        .button {
            background-color: transparent;
            border: none;
            color: ivory;
            cursor: pointer;
            font-size: large;
            font-family: 'Arial Unicode MS';
        }

            .button:hover {
                background-color: transparent;
                border: none;
                color: gold;
                cursor: pointer;
                font-size: large;
                font-family: 'Arial Unicode MS';
            }
        .auto-style5 {
            height: 276px;
        }
        .auto-style6 {
        }
        .auto-style7 {
            width: 952px;
            height: 362px;
        }
        .auto-style8 {
            width: 500px;
            height: 362px;
        }
    </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
        <div style="height: 800px;">
            <table style="height: 775px">
                 <tr><td class="auto-style5" colspan="3"></td></tr>
                <tr>
                   
                    <td class="auto-style7">
                        </td>
                   
                    <td class="auto-style8">
            <table class="auto-style1">
                <tr>
                    <td colspan="3">&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/select_city.jpg" ImageAlign="Middle" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Ahmedabad" CssClass="button" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text="Allahabad" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" Text="Aurangabad" CssClass="button" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" runat="server" Text="Bengaluru" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button5" runat="server" Text="Bilaspur" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button6" runat="server" Text="Chandhigarh" CssClass="button" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button7" runat="server" Text="Chennai" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button8" runat="server" Text="Delhi/NCR" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button9" runat="server" Text="Hyderabad" CssClass="button" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button10" runat="server" Text="Indore" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button11" runat="server" Text="Jalandhar" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button12" runat="server" Text="Kolkata" CssClass="button" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button13" runat="server" Text="Latur" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button14" runat="server" Text="Lucknow" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button15" runat="server" Text="Ludhiana" CssClass="button" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button16" runat="server" Text="Mumbai" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button17" runat="server" Text="Nagpur" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button18" runat="server" Text="Nanded" CssClass="button" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button19" runat="server" Text="Pune" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button20" runat="server" Text="Raipur" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button21" runat="server" Text="Surat" CssClass="button" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button22" runat="server" Text="Udaipur" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button23" runat="server" Text="Ujjain" CssClass="button" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button24" runat="server" Text="Vadodara" CssClass="button" /></td>
                </tr>
            </table>
                        </td>
                   
                    <td class="auto-style8">
                        </td>
                </tr>
                <tr>
                   
                    <td class="auto-style6" colspan="3">
                        &nbsp;</td>
                   
                </tr>
                </table>
        </div>
    </form>
</body>
</html>