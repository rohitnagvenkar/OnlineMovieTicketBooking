<%@ Page Language="VB" AutoEventWireup="false" CodeFile="myaccountedit.aspx.vb" Inherits="Account_myaccountedit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
 <style type="text/css">
        .auto-style3 {
            width: 424px;
            height: 23px;
        }

        .auto-style4 {
            height: 22px;
        }
        .bg-div3 {
            background-color: #27317F;
            margin:0px auto;
        }
        .auto-style6 {
            height: 23px;
            width: 668px;
        }

        .auto-style7 {
            height: 62px;
        }

        .auto-style8 {
            height: 23px;
            width: 276px;
        }

        .auto-style15 {
            width: 424px;
            height: 55px;
        }

        .auto-style16 {
            height: 55px;
            width: 276px;
        }

        .auto-style17 {
            height: 55px;
            width: 668px;
        }

        .bg {
            background-image: url(../Images/main_bg.jpg);
            background-size: 100%;
        }
        .bg-div1 {
            background-color: rgb(224,224,224);
            margin:10px auto;
            margin-top:50px; 
        }

.bg-div4
        {
           margin:10px auto; 
        }

.style160
        {
            width: 164px;
            height: 87px;
        }
      
        .style161
        {
            width: 30px;
        }
        .bg-div2 {
            background-color: rgb(255, 255, 255);
            margin:0px auto; 
        }

        .button {
            background-color: transparent;
            border: none;
            color: black;
            cursor: pointer;
            font-size: x-large;
            font-family: 'Arial Unicode MS';
        }

            .button:hover {
                background-color: #131A6C;
                border: none;
                color: White;
                cursor: pointer;
                font-size: x-large;
                font-family: 'Arial Unicode MS';
            }

        .button1 {
            background-color: transparent;
            border: none;
            color: #131A6C;
            cursor: pointer;
            font-size: large;
            font-family: 'Arial Unicode MS';
        }

            .button1:hover {
                background-color: transparent;
                border: none;
                color: Red;
                cursor: pointer;
                font-size: large;
                font-family: 'Arial Unicode MS';
            }
            .button2 {
            background-color: transparent;
            border: none;
            color: black;
            cursor: pointer;
            font-size: medium;
            font-family: 'Arial Unicode MS';
        }

            .button2:hover {
                background-color: transparent;
                border: none;
                color: Gray;
                cursor: pointer;
                font-size: medium;
                font-family: 'Arial Unicode MS';
            }
       
      
        .auto-style18 {
            height: 13px;
        }
        
        .table-background
        {
            background-color: rgb(255, 255, 240);
        }
        
        .style1
        {
            width: 424px;
            height: 11px;
        }
        .style2
        {
            height: 11px;
            width: 276px;
        }
        .style3
        {
            height: 11px;
            width: 668px;
        }
        .style58
     {
     }
     .style59
     {
         height: 29px;
     }
     .style60
     {
         width: 120px;
         height: 29px;
     }
     .style61
     {
         width: 35px;
     }
     .style62
     {
         width: 1024px;
     }
     .style63
     {
         width: 19px;
     }
     .style70
     {
         width: 160px;
     }
     .style71
     {
         background-color: rgb(255, 255, 255);
         margin: 0px auto;
         height: 500px;
         width: 1024px;
     }
     .style72
     {
         width: 49px;
     }
     .style74
     {
         width: 166px;
     }
    </style>
</head>
<body class="bg">

    <form id="form1" runat="server">
    <div style="height: 80px; width: 1024px;" class="bg-div4">
        <table style="width: 100%;">
            <tr>
                <td class="style161">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style161">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                <img alt="" src="../Images/logo.jpg" class="style160" /></td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style161">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        &nbsp;</div>
        <div style="height: 80px; text-align: center; width: 1024px;" class="bg-div1">

            <table style="width: 1024px">
                <tr>
                    <td colspan="3" class="auto-style4" style="background-color:#FFBA00;">
                        <asp:Button ID="HomeButton" runat="server" Text="Home" CssClass="button" />
                        <asp:Button ID="MoviesButton" runat="server" Text="Movies" CssClass="button" />
                        <asp:Button ID="TicketsButton" runat="server" Text="Tickets" CssClass="button" />
                        <asp:Button ID="CinemaButton" runat="server" Text="Cinemas" CssClass="button" />
                         <asp:Button ID="ContactButton" runat="server" Text="Connect With Us" 
                            CssClass="button" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="style1"></td>
                    <td class="style2">
                        &nbsp;
                        
                    </td>
                    <td class="style3">
                        <asp:Label ID="usrnameLabel" runat="server" Font-Names="Arial" 
                            Font-Overline="False" Font-Size="Medium"></asp:Label>

                           
                            <asp:Button ID="SignOutButton" runat="server" Text="Sign Out" CssClass="button1" />
                          
                            <asp:Button ID="AccountButton" runat="server" Text="My Account" CssClass="button1" />
                   
                    </td>
                </tr>
                                
            </table>


         
    </div>
    <div class="style71">
    <table style="width: 95%; height: 489px;">
            <tr>
                <td class="style72" rowspan="13">&nbsp;</td>
                <td class="style58">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style58" colspan="4" 
                    
                    
                    style="height: 44px; background-color: #363F8E; color: #FFFFFF; font-size: xx-large;">
                &nbsp;&nbsp;Edit Account
                </td>
            </tr>
            <tr>
                <td class="style58">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="style74">
                    &nbsp;</td>
                <td>
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
                        Font-Size="0.8em" PathSeparator=" : ">
                        <CurrentNodeStyle ForeColor="#333333" />
                        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
                        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
                        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
                    </asp:SiteMapPath>
                </td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label1" runat="server" Text="Upload Picture:"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="354px" BackColor="White" ForeColor="Black" /></td>
                <td colspan="2">
                    <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                        <asp:Button ID="FileUploadButton" runat="server" Text="Upload Image" CssClass="button1" />
                        <asp:Button ID="FileDeleteButton" runat="server" Text="Remove Image" CssClass="button1" />
                        <asp:Label ID="SelectImageLabel" runat="server" ForeColor="Red" Text="Select an Image"></asp:Label></asp:PlaceHolder>


                </td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label5" runat="server" Text="First Name:*"></asp:Label></td>
                <td class="auto-style24">
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td class="auto-style9" colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                        ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label6" runat="server" Text="Last Name:"></asp:Label></td>
                <td class="auto-style21">
                    <asp:TextBox ID="LastNameTextBox" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label11" runat="server" Text="Email:*"></asp:Label></td>
                <td class="auto-style21">
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="EmailTextBox" Display="Dynamic" 
                        ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label4" runat="server" Text="Alternate Email:"></asp:Label></td>
                <td class="auto-style21">
                    <asp:TextBox ID="AlternateEmailTextBox" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label10" runat="server" Text="Gender:*"></asp:Label></td>
                <td class="auto-style21">
                    <asp:RadioButton ID="MaleRadioButton" runat="server" Text="Male" GroupName="Gender" Checked="True" /><br />
                    <asp:RadioButton ID="FemaleRadioButton" runat="server" Text="Female" GroupName="Gender" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label7" runat="server" Text="City:*"></asp:Label></td>
                <td class="auto-style21">
                    <asp:TextBox ID="CityTextBox" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="CityTextBox" Display="Dynamic" 
                        ErrorMessage="City Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style58">
                    <asp:Label ID="Label8" runat="server" Text="Phone No:"></asp:Label></td>
                <td class="auto-style21">
                    <asp:TextBox ID="PhoneNoTextBox" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="style60">
                    <asp:Label ID="Label9" runat="server" Text="Mobile No:*"></asp:Label></td>
                <td class="style59">
                    <asp:TextBox ID="MobileNoTextBox" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td class="style59" colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="MobileNoTextBox" Display="Dynamic" 
                        ErrorMessage="Mobile No Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style58">&nbsp;</td>
                <td class="auto-style22" style="text-align: center;">
                    <asp:Button ID="UpdateButton" runat="server" Text="Update" CssClass="button1" />
                   <input onclick="window.location.href='../Account/myaccount.aspx';" 
                                    style="background-color: transparent" type="button" value="Cancel"></input>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    </div>
    <div style="height: 250px; width: 1024px;" class="bg-div3">
        <table class="style62">
            <tr>
                <td class="style139" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
                <td class="style126" colspan="6" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
                <td class="style151" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style138" style="color: #FFFFFF; font-weight: bold">
                    </td>
                <td class="style153" style="color: #FFFFFF; font-weight: bold">
                    General</td>
                <td class="style154" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;
                    Tickets</td>
                <td class="style154" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;
                    Movies</td>
                <td class="style154" style="color: #FFFFFF; font-weight: bold">
                    Cinemas</td>
                <td class="style154" style="color: #FFFFFF; font-weight: bold">
                    Events &amp; Promos</td>
                <td style="color: #FFFFFF; font-weight: bold" class="style154">
                    Corporate</td>
                <td style="color: #FFFFFF; font-weight: bold" class="style152">
                    </td>
            </tr>
            <tr>
                <td class="style139" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style155" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style156">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style151">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style139" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style155" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="#8386A4" Font-Underline="False">Home</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton8" runat="server" ForeColor="#8386A4" Font-Underline="False">Purchaces</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton9" runat="server" ForeColor="#8386A4" Font-Underline="False">All Movies</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton10" runat="server" ForeColor="#8386A4" Font-Underline="False">Cinema Locator</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton11" runat="server" ForeColor="#8386A4" Font-Underline="False">Movie Events</asp:LinkButton>
                </td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style156">
                    <asp:LinkButton ID="LinkButton12" runat="server" ForeColor="#8386A4" 
                        Font-Underline="False">About Us</asp:LinkButton>
                </td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style151">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style139" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style155" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton13" runat="server" ForeColor="#8386A4" Font-Underline="False">Connect with Us</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton14" runat="server" ForeColor="#8386A4" Font-Underline="False">Movie News</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton15" runat="server" ForeColor="#8386A4" Font-Underline="False">FAQ&#39;s</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style156">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style151">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style139" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style155" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    <asp:LinkButton ID="LinkButton19" runat="server" ForeColor="#8386A4" Font-Underline="False">Site Map</asp:LinkButton>
                </td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style156">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style151">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style139" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style155" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td class="style156" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style156">
                    &nbsp;</td>
                <td style="color: #6C507F; font-size: medium; font-weight: bold" 
                    class="style151">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
