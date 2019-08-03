Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_admin_seats
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String


    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("~/Admin/admin_main.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("~/Admin/admin_users.aspx")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("~/Admin/admin_movie.aspx")
    End Sub


    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("~/Admin/admin_theater.aspx")
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Response.Redirect("~/Admin/admin_shows.aspx")
    End Sub

    Protected Sub Page_Load1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        AdminLabel.Text = Session("usrname")
        lblTime.Text = DateTime.Now.ToString("hh:mm:ss")
        lblDateToday.Text = Date.Now.Date
    End Sub

    Protected Sub TimerTime_Tick1(ByVal sender As Object, ByVal e As System.EventArgs) Handles TimerTime.Tick
        lblTime.Text = DateTime.Now.ToString("hh:mm:ss")
        lblDateToday.Text = Date.Now.Date
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Insert into Seats (SeatID,SeatGold,SeatSilver,SeatPlatinum,SeatTotal,CostGold,CostSilver,CostPlatinum) values(@a,@b,@c,@d,@e,@f,@g,@h)", con)
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = TextBox1.Text
        cmd.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = TextBox2.Text
        cmd.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = TextBox3.Text
        cmd.Parameters.Add(New SqlParameter("@d", SqlDbType.NVarChar, 50)).Value = TextBox6.Text
        cmd.Parameters.Add(New SqlParameter("@e", SqlDbType.NVarChar, 50)).Value = TextBox7.Text
        cmd.Parameters.Add(New SqlParameter("@f", SqlDbType.NVarChar, 50)).Value = TextBox8.Text
        cmd.Parameters.Add(New SqlParameter("@g", SqlDbType.NVarChar, 50)).Value = TextBox12.Text
        cmd.Parameters.Add(New SqlParameter("@h", SqlDbType.NVarChar, 50)).Value = TextBox13.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Show added")
            Response.Redirect("~/Admin/admin_seats.aspx")
        End If
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Delete from Seats where SeatID=@a", con)
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedItem.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Deleted successfully")
            Response.Redirect("~/Admin/admin_seats.aspx")
        End If
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Update Seats set SeatGold=@a,SeatSilver=@b,SeatPlatinum=@c,SeatTotal=@d,CostGold=@e,CostSilver=@f,CostPlatinum=@g where SeatID=@h", con)
        cmd.Parameters.Add(New SqlParameter("@h", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedValue
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = TextBox4.Text
        cmd.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = TextBox5.Text
        cmd.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = TextBox9.Text
        cmd.Parameters.Add(New SqlParameter("@d", SqlDbType.NVarChar, 50)).Value = TextBox10.Text
        cmd.Parameters.Add(New SqlParameter("@e", SqlDbType.NVarChar, 50)).Value = TextBox11.Text
        cmd.Parameters.Add(New SqlParameter("@f", SqlDbType.NVarChar, 50)).Value = TextBox14.Text
        cmd.Parameters.Add(New SqlParameter("@g", SqlDbType.NVarChar, 50)).Value = TextBox15.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Updated successfully")
            Response.Redirect("~/Admin/admin_seats.aspx")
        End If
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select SeatGold,SeatSilver,SeatPlatinum,SeatTotal,CostGold,CostSilver,CostPlatinum from Seats where SeatID=@a", con)
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedValue
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.HasRows Then
            reader.Read()
            Label12.Text = reader(0)
            Label13.Text = reader(1)
            Label14.Text = reader(2)
            Label19.Text = reader(3)
            Label20.Text = reader(4)
            Label26.Text = reader(5)
            Label27.Text = reader(6)

            TextBox4.Text = reader(0)
            TextBox5.Text = reader(1)
            TextBox9.Text = reader(2)
            TextBox10.Text = reader(3)
            TextBox11.Text = reader(4)
            TextBox14.Text = reader(5)
            TextBox15.Text = reader(6)
        End If
        con.Close()
        reader.Close()
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Response.Redirect("~/Admin/admin_seats.aspx")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session.Abandon()
        Response.Redirect("~/Home/home.aspx")
    End Sub
End Class
