Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_admin_users
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim strConString As String

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


    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Delete from register where rEmail=@a", con)
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedItem.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Deleted successfully")
            Response.Redirect("~/Admin/admin_users.aspx")
        End If
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

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session.Abandon()
        Response.Redirect("~/Home/home.aspx")
    End Sub
End Class
