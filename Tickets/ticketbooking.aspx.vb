Imports System.Data.SqlClient
Imports System.Data
Partial Class Tickets_ticketbooking
    Inherits System.Web.UI.Page
    Dim rs, clas, seatt, total As Integer
    Dim date1 As Date
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String
    Dim Path, ImagePath As String
    Dim arrlst As New ArrayList()
    Dim list As List(Of String) = New List(Of String)
    Dim a, b, c, d As Integer
    Dim a1, b1, c1 As Integer
    Dim ttl, ttl1 As Integer
    Dim theatername As String
    Dim seatselected As String
    Dim classname As String
    Dim e1, f1, g1, h1, tot As Integer

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)

    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If Session("usrname") = "" Then

        Else
            clas = CInt(Session("classcost"))
            seatt = CInt(Session("seatselected"))
            total = seatt * clas
            Label19.Text = total
            Label16.Text = total + 65
        End If
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        e1 = CInt(DropDownList1.SelectedValue)
        f1 = CInt(DropDownList2.SelectedValue)
        g1 = CInt(DropDownList3.SelectedValue)
        h1 = CInt(DropDownList4.SelectedValue)
        tot = e1 + f1 + g1 + h1 + CInt(Label16.Text)
        Label30.Text = tot
        Label2.Text = Session("city")
        Label4.Text = Session("movies")
        Label3.Text = Session("theater")
        Label5.Text = Session("seatselected")
        Label6.Text = Session("date") + " " + Session("showtime")
        Label7.Text = Session("classname") & " Rs. " & Session("classcost")
    End Sub

    Protected Sub CheckOutButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles CheckOutButton.Click
        If Session("classname") = "Gold" = True Then
            Session("ticketcost") = Label30.Text
            Session("ticketno") = GetRandom10()
            Call connect()
            con.Open()
            cmd1 = New SqlCommand("Update Seats set Seats.SeatGold=@a,Seats.SeatTotal=@b from Seats INNER JOIN Show ON Show.SeatID = Seats.SeatID where Show.ShowID = @c", con)
            cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = Session("sgold")
            cmd1.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = Session("stotal")
            cmd1.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = Session("showID")
            cmd1.ExecuteNonQuery()
            cmd2 = New SqlCommand("insert into UserBookingInfo (UserEmail,Movie,Cinema,Date,Time,Class,Seats,Cost,TicketNo) values(@a,@b,@c,@d,@e,@f,@g,@h,@i)", con)
            cmd2.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = Session("usremail")
            cmd2.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = Session("movies")
            cmd2.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = Session("theater")
            cmd2.Parameters.Add(New SqlParameter("@d", SqlDbType.NVarChar, 50)).Value = Session("date")
            cmd2.Parameters.Add(New SqlParameter("@e", SqlDbType.NVarChar, 50)).Value = Session("showtime")
            cmd2.Parameters.Add(New SqlParameter("@f", SqlDbType.NVarChar, 50)).Value = Session("classname")
            cmd2.Parameters.Add(New SqlParameter("@g", SqlDbType.NVarChar, 50)).Value = Session("seatselected")
            cmd2.Parameters.Add(New SqlParameter("@h", SqlDbType.NVarChar, 50)).Value = Label30.Text
            cmd2.Parameters.Add(New SqlParameter("@i", SqlDbType.NVarChar, 50)).Value = Session("ticketno")
            cmd2.ExecuteNonQuery()
            con.Close()
            Response.Redirect("~/Tickets/printticket.aspx")
        ElseIf Session("classname") = "Silver" = True Then
            Session("ticketcost") = Label30.Text
            Session("ticketno") = GetRandom10()
            Call connect()
            con.Open()
            cmd1 = New SqlCommand("Update Seats set Seats.SeatSilver=@a,Seats.SeatTotal=@b from Seats INNER JOIN Show ON Show.SeatID = Seats.SeatID where Show.ShowID = @c", con)
            cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = Session("sgold")
            cmd1.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = Session("stotal")
            cmd1.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = Session("showID")
            cmd1.ExecuteNonQuery()
            cmd2 = New SqlCommand("insert into UserBookingInfo (UserEmail,Movie,Cinema,Date,Time,Class,Seats,Cost,TicketNo) values(@a,@b,@c,@d,@e,@f,@g,@h,@i)", con)
            cmd2.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = Session("usremail")
            cmd2.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = Session("movies")
            cmd2.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = Session("theater")
            cmd2.Parameters.Add(New SqlParameter("@d", SqlDbType.NVarChar, 50)).Value = Session("date")
            cmd2.Parameters.Add(New SqlParameter("@e", SqlDbType.NVarChar, 50)).Value = Session("showtime")
            cmd2.Parameters.Add(New SqlParameter("@f", SqlDbType.NVarChar, 50)).Value = Session("classname")
            cmd2.Parameters.Add(New SqlParameter("@g", SqlDbType.NVarChar, 50)).Value = Session("seatselected")
            cmd2.Parameters.Add(New SqlParameter("@h", SqlDbType.NVarChar, 50)).Value = Label30.Text
            cmd2.Parameters.Add(New SqlParameter("@i", SqlDbType.NVarChar, 50)).Value = Session("ticketno")
            cmd2.ExecuteNonQuery()
            con.Close()
            Response.Redirect("~/Tickets/printticket.aspx")
        ElseIf Session("classname") = "Platinum" = True Then
            Session("ticketcost") = Label30.Text
            Session("ticketno") = GetRandom10()
            Call connect()
            con.Open()
            cmd1 = New SqlCommand("Update Seats set Seats.SeatPlatinum=@a,Seats.SeatTotal=@b from Seats INNER JOIN Show ON Show.SeatID = Seats.SeatID where Show.ShowID = @c", con)
            cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = Session("sgold")
            cmd1.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = Session("stotal")
            cmd1.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = Session("showID")
            cmd1.ExecuteNonQuery()
            cmd2 = New SqlCommand("insert into UserBookingInfo (UserEmail,Movie,Cinema,Date,Time,Class,Seats,Cost,TicketNo) values(@a,@b,@c,@d,@e,@f,@g,@h,@i)", con)
            cmd2.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = Session("usremail")
            cmd2.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = Session("movies")
            cmd2.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = Session("theater")
            cmd2.Parameters.Add(New SqlParameter("@d", SqlDbType.NVarChar, 50)).Value = Session("date")
            cmd2.Parameters.Add(New SqlParameter("@e", SqlDbType.NVarChar, 50)).Value = Session("showtime")
            cmd2.Parameters.Add(New SqlParameter("@f", SqlDbType.NVarChar, 50)).Value = Session("classname")
            cmd2.Parameters.Add(New SqlParameter("@g", SqlDbType.NVarChar, 50)).Value = Session("seatselected")
            cmd2.Parameters.Add(New SqlParameter("@h", SqlDbType.NVarChar, 50)).Value = Label30.Text
            cmd2.Parameters.Add(New SqlParameter("@i", SqlDbType.NVarChar, 50)).Value = Session("ticketno")
            cmd2.ExecuteNonQuery()
            con.Close()
            Response.Redirect("~/Tickets/printticket.aspx")
        End If
    End Sub

    Private Function GetRandom10() As Long

        Static r As New Random

        Return CType(r.NextDouble * 9000000000 + 1000000000, Long)

    End Function

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Label26.Text = DropDownList1.SelectedValue
        amtLabel1.Text = " Qty:" & DropDownList1.SelectedIndex
        e1 = CInt(DropDownList1.SelectedValue)


    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Label27.Text = DropDownList2.SelectedValue
        amtLabel2.Text = " Qty:" & DropDownList2.SelectedIndex
        f1 = CInt(DropDownList2.SelectedValue)
        
    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged
        Label28.Text = DropDownList3.SelectedValue
        amtLabel3.Text = " Qty:" & DropDownList3.SelectedIndex
        g1 = CInt(DropDownList3.SelectedValue)
        
    End Sub

    Protected Sub DropDownList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList4.SelectedIndexChanged
        Label29.Text = DropDownList4.SelectedValue
        amtLabel4.Text = " Qty:" & DropDownList4.SelectedIndex
        h1 = CInt(DropDownList4.SelectedValue)
        
    End Sub
End Class
