Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_admin_theater
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String
    Dim Path, ImagePath As String
    Dim arrlst, arrlst1 As New ArrayList()
    Dim myImageFile As HttpPostedFile
    Dim nFileLen As Integer
    Dim result As Integer
    Dim myData As Byte()
    Dim reader As SqlDataReader

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Response.Redirect("~/Admin/admin_seats.aspx")
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

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session.Abandon()
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Insert into Theater (TheaterID,TheaterName,TheaterLocation,TheaterNumOfScreen) values(@TID,@TName,@TLoc,@TNOS)", con)
        cmd.Parameters.Add(New SqlParameter("@TID", SqlDbType.NVarChar, 50)).Value = TextBox1.Text
        cmd.Parameters.Add(New SqlParameter("@TName", SqlDbType.NVarChar, 50)).Value = TextBox2.Text
        cmd.Parameters.Add(New SqlParameter("@TLoc", SqlDbType.NVarChar, 50)).Value = TextBox3.Text
        cmd.Parameters.Add(New SqlParameter("@TNOS", SqlDbType.NVarChar, 50)).Value = TextBox7.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Theater added")
            Response.Redirect("~/Admin/admin_theater.aspx")
        End If
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Delete from Theater where TheaterID=@TID", con)
        cmd.Parameters.Add(New SqlParameter("@TID", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedValue
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Deleted successfully")
            Response.Redirect("~/Admin/admin_theater.aspx")
        End If
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Update Theater set TheaterName=@TName,TheaterLocation=@TLoc,TheaterNumOfScreen=@TNOS where TheaterID=@TID", con)
        cmd.Parameters.Add(New SqlParameter("@TID", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedValue
        cmd.Parameters.Add(New SqlParameter("@TName", SqlDbType.NVarChar, 50)).Value = TextBox1.Text
        cmd.Parameters.Add(New SqlParameter("@TLoc", SqlDbType.NVarChar, 50)).Value = TextBox2.Text
        cmd.Parameters.Add(New SqlParameter("@TNOS", SqlDbType.NVarChar, 50)).Value = TextBox3.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Updated successfully")
            Response.Redirect("~/Admin/Theater/admin_update_theater.aspx")
        End If
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select TheaterName,TheaterLocation,TheaterNumOfScreen from Theater where TheaterID=@TID", con)
        cmd.Parameters.Add(New SqlParameter("@TID", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedValue
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.HasRows Then
            reader.Read()
            Label12.Text = reader(0)
            Label13.Text = reader(1)
            Label14.Text = reader(2)
            TextBox4.Text = reader(0)
            TextBox5.Text = reader(1)
            TextBox8.Text = reader(2)
        End If
        con.Close()
        reader.Close()
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/Home/home.aspx")
    End Sub

End Class
