<%@ Page Language="VB" AutoEventWireup="false" CodeFile="printticket.aspx.vb" Inherits="Tickets_printticket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

function CallPrint(strid)
{
 var prtContent = document.getElementById(strid);
 var WinPrint = window.open('', '', 'left=500,top=100,width=500,height=350,toolbar=0,scrollbars=0,sta­tus=0');
 WinPrint.document.write(prtContent.innerHTML);
 WinPrint.document.close();
 WinPrint.focus();
 WinPrint.print();
 WinPrint.close();
 prtContent.innerHTML=strOldOne;
 

}
</script>
    <style type="text/css">
        .style4
        {
            width: 601px;
        }
        .style5
        {
            height: 23px;
            width: 601px;
        }
        .style6
        {
            height: 23px;
            width: 197px;
        }
        .style7
        {
            width: 197px;
        }
        .style10
        {
            height: 66px;
        }
        .style11
        {
            height: 25px;
        }
        .style12
        {
            width: 96%;
            height: 296px;
        }
        .style13
        {
            height: 70px;
            margin-top: 39px;
        }
        .style14
        {
            width: 146px;
            height: 43px;
        }
        .style15
        {
            width: 197px;
            height: 24px;
        }
        .style16
        {
            width: 601px;
            height: 24px;
        }
        .style17
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/close.jpg" 
            Height="24px" Width="73px"/>
    </div>
    <div id="divPrint">
            <asp:Panel ID="Panel1" runat="server" Width="444px" Height="337px">
            <table style="background-color: #EBE7E9;" class="style12">
            <tr>
                <td class="style10" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="85px" 
                        ImageUrl="~/Images/logo.jpg" Width="180px" />
                </td>
            </tr>
            <tr>
                <td class="style11" colspan="2">
                </td>
            </tr>
            <tr>
                <td class="style15" 
                    
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    Seats:</td>
                <td class="style16" 
                    
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    Movie:</td>
                <td class="style5" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
                <tr>
                    <td class="style6" 
                        style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                        Cinema:</td>
                    <td class="style5" 
                        style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            <tr>
                <td class="style7" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    Date:</td>
                <td class="style4" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    Time:</td>
                <td class="style5" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    Class:</td>
                <td class="style5" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    Cost:</td>
                <td class="style5" 
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" 
                    
                    
                    style="font-weight: bold; color: #000000; font-style: normal; font-size: large; font-family: 'Times New Roman', Times, serif" 
                    colspan="2">
                    <asp:Label ID="Label10" runat="server" Text="Ticket Number: "></asp:Label>
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

            &nbsp;</asp:Panel>
        
    
    </div>
    <div id="bottom" class="style13">
    <input id="Button2" type="button" value="Print Ticket" 
            onclick="CallPrint('divPrint');" class="style14" style="font-size: large" />
    </div>
    </form>
</body>
</html>
