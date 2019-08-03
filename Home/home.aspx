<%@ Page Language="VB" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="Home_home" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="icon" href="../Images/header_icon.png" /> 
    <title>OMTB Home Page</title>
    <script src="../jquery-1.9.0.min.js" type="text/javascript"></script>
    <script id="a1" type="text/javascript">
        $(document).ready(function () {
            //$('div#p1').hide();
            $('div#p2').hide();
            $('div#p4').hide();
            $('div#p5').hide();
            $('input#pb').click(function () {
                $('div#p3').hide();
                $('div#p2').slideDown(5000);
                $('div#p4').show();
            });
            $('input#pc').click(function () {
                $('div#p4').hide();
                $('div#p2').slideUp(5000);
                $('div#p3').show();
            });
            $('input#b1').click(function () {
                $('div#p1').show();
                $('div#p3').show();
                $('div#p5').hide();
            });
            $('input#b2').click(function () {
                $('div#p1').hide();
                $('div#p2').hide();
                $('div#p3').hide();
                $('div#p4').hide();
                $('div#p5').show();
            });
                  });
    </script>
    <script id="a2" type="text/javascript">
        var dimages = new Array();
        var numImages = 3;
        for (i = 0; i < numImages; i++) {
            dimages[i] = new Image();
            dimages[i].src = "../Images/Rotator/image" + (i + 1) + ".jpg";
        }
        var curImage = -1;
        function swapPicture() {
            if (document.images) {
                var nextImage = curImage + 1;
                if (nextImage >= numImages)
                    nextImage = 0;
                if (dimages[nextImage] && dimages[nextImage].complete) {
                    var target = 0;
                    if (document.images.myImage)
                        target = document.images.myImage;
                    if (document.all && document.getElementById("myImage"))
                        target = document.getElementById("myImage");
                    if (target) {
                        target.src = dimages[nextImage].src;
                        curImage = nextImage;
                    }
                    setTimeout("swapPicture()", 5000);
                }
                else {
                    setTimeout("swapPicture()", 500);
                }
            }
        }
        setTimeout("swapPicture()", 5000);
    </script>

    <style type="text/css">
       .auto-style3 {
            width: 424px;
            height: 23px;
        }
       
        .auto-style4 {
            height: 22px;
            
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
        .bg-div2 {
            background-color: rgb(255, 255, 255);
           margin:0px auto;
            
        }
        .bg-div3 {
            background-color: #27317F;
            margin:0px auto;
        }
        
        .bg-div4
        {
           margin:10px auto; 
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
            font-size: medium;
            font-family: 'Arial Unicode MS';
        }

            .button1:hover {
                background-color: transparent;
                border: none;
                color: Red;
                cursor: pointer;
                font-size: medium;
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
        .button3 {
            background-color:#FFBA00;
            border: none;
            color: black;
            cursor:pointer;
            font-size: medium;
            font-family:Arial Unicode MS;
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
            width: 500px;
            height: 11px;
        }
        .style3
        {
            height: 11px;
            width: 668px;
        }
        .style13
        {
            height: 151px;
            width:60px;
        }
        .style40
        {
            width: 125px;
        }
        .style56
        {
            width: 1024px;
            top: 233px;
            height: 293px;
        }
                      
        .style96
        {
            height: 21px;
            }
        .style97
        {
            height: 173px;
            width: 59px;
        }
                      
        .style102
        {
            height: 151px;
            width: 400px;
        }
              
        .style122
        {
            width: 37px;
        }
        .style123
        {
            width: 164px;
        }
        .style124
        {
            width: 192px;
        }
      
        .style125
        {
            width: 375px;
        }
      
        .style126
        {
        }
              
        .style138
        {
            height: 23px;
            width: 35px;
        }
        .style139
        {
            width: 35px;
        }
              
        .style147
        {
            height: 151px;
            width: 758px;
        }
        .style148
        {
            height: 37px;
        }
      
        .style149
        {
            height: 126px;
        }
      
        .style150
        {
            width: 1024px;
            margin-top: 0px;
        }
        .style151
        {
            width: 32px;
        }
        .style152
        {
            height: 23px;
            width: 32px;
        }
        .style153
        {
            width: 157px;
            height: 23px;
        }
        .style154
        {
            width: 158px;
            height: 23px;
        }
        .style155
        {
            width: 157px;
        }
        .style156
        {
            width: 158px;
        }
      
        .style159
        {
            width: 741px;
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
      
        .style164
        {
            width: 180px;
        }
        .style165
        {
            background-color: rgb(255, 255, 255);
            margin: 0px auto;
            height: 1023px;
            width: 1024px;
        }
        .style166
        {
            background-color: #27317F;
            margin: 0px auto;
            height: 308px;
            width: 1024px;
        }
      
        .style167
        {
            width: 37px;
            height: 170px;
        }
        .style169
        {
            height: 170px;
        }
        .style170
        {
            width: 748px;
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
                    <td colspan="2" class="auto-style4" style="background-color:#FFBA00;">
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
                    <td class="style3">
                        <asp:Label ID="usrnameLabel" runat="server" Font-Names="Arial" Font-Overline="False" Font-Size="medium"></asp:Label>
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                            <asp:Button ID="SignInButton" runat="server" Text="Sign in" CssClass="button1" />
                            <asp:Button ID="SignOutButton" runat="server" Text="Sign Out" CssClass="button1" />
                            <asp:Button ID="RegisterButton" runat="server" Text="Register" CssClass="button1" />
                            <asp:Button ID="AccountButton" runat="server" Text="My Account" CssClass="button1" />
                        </asp:PlaceHolder>
                    </td>
                </tr>
                                
            </table>


           </div>
    <div class="style165" id="divmain">
        <table class="style56" >
            <tr>
                <td class="style96" colspan="5">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    </td>
            </tr>
            <tr>
                <td class="style97">
                    </td>
                <td class="style102">
                   <asp:Image ID="myImage" runat="server" Height="276px" style="margin-top: 0px; margin-left: 10px;" 
                        Width="679px" ImageUrl="~/Images/Rotator/image0.jpg" />
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style147">
                    <table style="width: 100%; height: 221px;">
                        <tr>
                            <td class="style148" 
                                
                                style="color: #FFFFFF; background-color: #2E2E2E; font-size: large; font-weight: bold">
                                &nbsp; Movie Focus&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style149">
                                <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/arny.jpg" 
                                    Width="282px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #DDDDDD; color: #000000; font-size: medium; font-weight: bold">
                                &nbsp; More Movie Features&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: small; font-weight: bold; background-color: #F1F1F1; color: #FF4B00;">
                                Interviews: Star Arnold Schwarzenegger!</td>
                        </tr>
                        <tr>
                            <td style="font-size: small; font-weight: bold; background-color: #F1F1F1; color: #FF4B00;">
                                RED CARPET PICS: The Last Stand!</td>
                        </tr>
                        <tr>
                            <td style="font-size: small; font-weight: bold; background-color: #F1F1F1; color: #FF4B00;">
                                MEET THE CROODS: Watch out!</td>
                        </tr>
                    </table>
                </td>
                <td class="style40" rowspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style96" colspan="4">

                    </td>
            </tr>
            </table>
            
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                 <table style="background-color: #363F8E; width: 748px;">
                <tr>
                    <td class="style122">
                        &nbsp;</td>
                    <td class="style123" style="text-align: center">
                        <input id="b1" type="button" value="Showing Now" />
                                      </td>
                    <td class="style124">
                        <input id="b2" type="button" value="Comming Soon" />
                                             </td>
                    <td class="style125">
                        &nbsp;
                    </td>
                </tr>
            </table>
            <div id="p1" style="width: 748px; background-color: #E3E3E3;">
            <table id="tableajax1" class="style119" style="width: 748px; border:1px solid #E3E3E3;">
            
            <tr>
                <td class="style167" style="background-color: #E3E3E3">
                    </td>
                <td class="style169" style="background-color: #E3E3E3">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="true" 
                        ForeColor="Black" Enabled="False">LinkButton</asp:LinkButton>
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="111px" width="75px" />
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" 
                        BorderColor="Transparent" Enabled="false" Height="111px" TextMode="MultiLine" 
                        Width="128px"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Images/buyt.jpg" />
                </td>
                <td class="style169" style="background-color: #E3E3E3">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" Font-Bold="true" Enabled="False">LinkButton</asp:LinkButton>
                <br />
                    <asp:Image ID="Image2" runat="server" Height="111px" width="75px" />
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="false" TextMode="MultiLine"  
                        Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/Images/buyt.jpg"/>
                </td>
                <td class="style169" style="background-color: #E3E3E3">
                    <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" Font-Bold="true" Enabled="False" >LinkButton</asp:LinkButton>
                <br />
                    <asp:Image ID="Image3" runat="server" Height="111px" width="75px" />
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="false" TextMode="MultiLine"  
                        Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/Images/buyt.jpg"/>
                </td>
             </tr>
             
            <tr>
                <td class="style122" style="background-color: #E3E3E3">
                    &nbsp;</td>
                <td class="style169" style="background-color: #E3E3E3">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="true" ForeColor="Black" Enabled="False">LinkButton</asp:LinkButton>
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="111px" width="75px" />
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" 
                        BorderColor="Transparent" Enabled="false" Height="111px" TextMode="MultiLine" 
                        Width="128px"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton4" runat="server" 
                        ImageUrl="~/Images/buyt.jpg" />
                </td>
                <td class="style169" style="background-color: #E3E3E3">
                 <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="Black" Font-Bold="true" Enabled="False" >LinkButton</asp:LinkButton>
                <br />
                 <asp:Image ID="Image5" runat="server" Height="111px" width="75px" />
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="false" TextMode="MultiLine"  
                        Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton5" runat="server"  ImageUrl="~/Images/buyt.jpg"/>
                </td>
                <td class="style169" style="background-color: #E3E3E3">
                 <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Black" Font-Bold="true" Enabled="False" >LinkButton</asp:LinkButton>
                <br />
                 <asp:Image ID="Image6" runat="server" Height="111px" width="75px" />
                    <asp:TextBox ID="TextBox6" runat="server" Enabled="false" TextMode="MultiLine"  
                        Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Images/buyt.jpg"/>
                </td>
            </tr>
            
                
        </table>
       </div>
            
        <div id="p2" style="width: 1024px; background-color: #FFFFFF;">
        <table id="table1" class="style170" style="background-color: #E3E3E3;"">
                        <tr>
                <td class="style122" rowspan="2" style="background-color: #E3E3E3">
                    &nbsp;</td>
                <td class="style169" style="background-color: #E3E3E3">
                    <asp:LinkButton ID="LinkButton20" runat="server" Font-Bold="true" 
                        ForeColor="Black" Enabled="False">LinkButton</asp:LinkButton>
                    <br />
                    <asp:Image ID="Image7" runat="server" Height="111px" width="75px"/>
                    <asp:TextBox ID="TextBox7" runat="server" Enabled="false" TextMode="MultiLine"  
                        Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton7" runat="server" 
                        ImageUrl="~/Images/buyt.jpg" />
                    <br />
                   </td>
                <td class="style169" style="background-color: #E3E3E3">
                    <asp:LinkButton ID="LinkButton21" runat="server" Font-Bold="true" 
                        ForeColor="Black" Enabled="False">LinkButton</asp:LinkButton>
                    <br />
                    <asp:Image ID="Image8" runat="server" Height="111px" width="75px"/>
                    <asp:TextBox ID="TextBox8" runat="server" Enabled="false" TextMode="MultiLine"  
                        Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton8" runat="server" 
                        ImageUrl="~/Images/buyt.jpg" />
                    <br />
                    
                </td>
                <td class="style169" style="background-color: #E3E3E3">
                    <asp:LinkButton ID="LinkButton22" runat="server" Font-Bold="true" 
                        ForeColor="Black" Enabled="False">LinkButton</asp:LinkButton>
                    <br />
                    <asp:Image ID="Image9" runat="server" Height="111px" width="75px"/>
                    <asp:TextBox ID="TextBox9" runat="server" Enabled="false" TextMode="MultiLine"  
                        Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton9" runat="server" 
                        ImageUrl="~/Images/buyt.jpg" />
                    <br />
                  
                </td>
             </tr>
            <tr>
                <td class="style169" style="background-color: #E3E3E3">
                    <asp:LinkButton ID="LinkButton23" runat="server" Font-Bold="true" 
                        ForeColor="Black" Enabled="False">LinkButton</asp:LinkButton>
                    <br />
                 <asp:Image ID="Image10" runat="server" Height="111px" width="75px"/>
                    <asp:TextBox ID="TextBox10" runat="server" Enabled="false" 
                        TextMode="MultiLine"  Width="128px" Height="111px" BackColor="Transparent"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    <asp:ImageButton ID="ImageButton10" runat="server" 
                        ImageUrl="~/Images/buyt.jpg" />
                    <br />
                   
                </td>
                <td class="style169" style="background-color: #E3E3E3">
                 
                </td>
                <td class="style169" style="background-color: #E3E3E3">
                
                </td>
            </tr>
        </table>
  </div>
        <div id="p3" style="width: 1024px; background-color: #FFFFFF;">
            <table id="table2" class="style159" style="width: 748px; background-color: #E3E3E3;">
            <tr>
                <td class="style122" style="background-color: #E3E3E3">
                    &nbsp;</td>
                <td class="style12" style="background-color: #E3E3E3; text-align: center;">
                    <input id="pb" type="button" value="show more" class="style164" style="background-color: #27317F; color: #FFFFFF" />
                    </td>
                <td class="style12" style="background-color: #E3E3E3">
                </td>
            </tr>
            </table>
            </div>
        <div id="p4" style="width: 1024px; background-color: #FFFFFF;">
            <table id="table3" class="style159" 
                style="width: 748px; background-color: #E3E3E3;">
            <tr>
                <td class="style122">
                    &nbsp;</td>
                <td class="style12" style="text-align: center">
                    <input id="pc" type="button" value="collaspe" class="style164" style="background-color: #27317F; color: #FFFFFF" />
                    </td>
                <td class="style12">
                </td>
            </tr>
            </table>
            </div>
            <div id="p5" style="width: 748px;">
            <table id="table4" class="style159" style="width: 748px;">
                        <tr>
                <td class="style122" rowspan="3" style="background-color: #E3E3E3">
                    &nbsp;</td>
                <td class="style120" style="background-color: #E3E3E3">
                    <asp:Label ID="Label5" runat="server" Text="CZ-12" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <asp:Image ID="Image12" runat="server" width="75px" Height="111px" ImageUrl="~/Admin/Images/CommingSoon/CS1.jpg"/>
                    <asp:TextBox ID="TextBox11" runat="server" Enabled="false" 
                        TextMode="MultiLine"  Width="128px" Height="111px" BackColor="Transparent" Text="12-FEB-2013"
                    BorderColor="Transparent"></asp:TextBox><br />
                   </td>
                <td class="style121" style="background-color: #E3E3E3">
                    <asp:Label ID="Label6" runat="server" Text="Dark Knight Rises" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <asp:Image ID="Image13" runat="server" width="75px" Height="111px" ImageUrl="~/Admin/Images/CommingSoon/CS2.jpg"/>
                    <asp:TextBox ID="TextBox12" runat="server" Enabled="false" 
                        TextMode="MultiLine"  Width="128px" Height="111px" BackColor="Transparent" Text="12-FEB-2013"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                    
                </td>
                <td class="style121" style="background-color: #E3E3E3">
                    <asp:Label ID="Label7" runat="server" Text="Dabbangg" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <asp:Image ID="Image14" runat="server" width="75px" Height="111px" ImageUrl="~/Admin/Images/CommingSoon/CS3.jpg"/>
                    <asp:TextBox ID="TextBox13" runat="server" Enabled="false" 
                        TextMode="MultiLine"  Width="128px" Height="111px" BackColor="Transparent" Text="12-FEB-2013"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                  
                </td>
             </tr>
                        <tr>
                            <td class="style120" style="background-color: #E3E3E3">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    Text="Deharudun Diary"></asp:Label>
                                <br />
                                <asp:Image ID="Image16" runat="server" width="75px" Height="111px" ImageUrl="~/Admin/Images/CommingSoon/CS4.jpg" />
                                <asp:TextBox ID="TextBox15" runat="server" BackColor="Transparent" 
                                    BorderColor="Transparent" Enabled="false" Height="111px" TextMode="MultiLine" Text="12-FEB-2013"
                                    Width="128px"></asp:TextBox>
                            </td>
                            <td class="style121" style="background-color: #E3E3E3">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    Text="G I Joe 2"></asp:Label>
                                <br />
                                <asp:Image ID="Image17" runat="server" width="75px" Height="111px" ImageUrl="~/Admin/Images/CommingSoon/CS5.jpg" />
                                <asp:TextBox ID="TextBox16" runat="server" BackColor="Transparent" 
                                    BorderColor="Transparent" Enabled="false" Height="111px" TextMode="MultiLine" Text="12-FEB-2013"
                                    Width="128px"></asp:TextBox>
                            </td>
                            <td class="style121" style="background-color: #E3E3E3">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    Text="The Hobbit"></asp:Label>
                                <br />
                                <asp:Image ID="Image18" runat="server" width="75px" Height="111px" ImageUrl="~/Admin/Images/CommingSoon/CS6.jpg" />
                                <asp:TextBox ID="TextBox17" runat="server" BackColor="Transparent" Text="12-FEB-2013"
                                    BorderColor="Transparent" Enabled="false" Height="111px" TextMode="MultiLine" 
                                    Width="128px"></asp:TextBox>
                            </td>
                        </tr>
            <tr>
                <td class="style120" style="background-color: #E3E3E3">
                    <asp:Label ID="Label8" runat="server" Text="Universal Soldier" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                 <asp:Image ID="Image15" runat="server" width="75px" Height="111px" ImageUrl="~/Admin/Images/CommingSoon/CS7.jpg"/>
                    <asp:TextBox ID="TextBox14" runat="server" Enabled="false" 
                        TextMode="MultiLine"  Width="128px" Height="111px" BackColor="Transparent" Text="12-FEB-2013"
                    BorderColor="Transparent"></asp:TextBox>
                    <br />
                   
                </td>
                <td class="style121" style="background-color: #E3E3E3">
                 
                </td>
                <td class="style121" style="background-color: #E3E3E3">
                
                </td>
            </tr>
        </table>
            </div>
     </ContentTemplate></asp:UpdatePanel>
 


    <div 
            class="style166">
        <table class="style150">
            <tr>
                <td class="style139" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
                <td class="style126" colspan="6" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
                <td class="style151" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style139" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
                <td class="style126" colspan="6" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #05092C;">
                    &nbsp;&nbsp; Follow Us On&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image19" runat="server" ImageUrl="~/Images/facebook_icon.jpg" />
&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image20" runat="server" ImageUrl="~/Images/twitter_icon.jpg" />
                    &nbsp;</td>
                <td class="style151" style="color: #FFFFFF; font-weight: bold">
                    &nbsp;</td>
            </tr>
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
            <tr>
                <td class="style139" 
                    style="color: #6C507F; font-size: medium; font-weight: bold">
                    &nbsp;</td>
                <td 
                    style="color: #6C507F; font-size: medium; font-weight: bold" colspan="6">
                    Disclaimer: Photos &amp; certain artwork used on OMTB.com are copyright protected 
                    and are the property of their respective owners. Brand logos &amp; other trademarks 
                    used herein are the property of ther respective owners. © 2013 OMTB Ltd</td>
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
    </div>
    </form>
    
</body>
</html>
