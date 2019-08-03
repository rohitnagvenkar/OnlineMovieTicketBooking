Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class Admin_admin_movie
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
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
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

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Insert into Movies (MovieID,MovieName,MovieDetails,MovieImage) values(@MID,@MName,@MDetails,@MImage)", con)
        cmd.Parameters.Add(New SqlParameter("@MID", SqlDbType.NVarChar, 50)).Value = TextBox1.Text
        cmd.Parameters.Add(New SqlParameter("@MName", SqlDbType.NVarChar, 50)).Value = TextBox2.Text
        cmd.Parameters.Add(New SqlParameter("@MDetails", SqlDbType.NVarChar, 50)).Value = TextBox3.Text
        If FileUpload1.HasFile = True Then
            If FileUpload1.PostedFile IsNot Nothing Then
                myImageFile = FileUpload1.PostedFile
                ImageFileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName)
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/Images/MovieImages/" & ImageFileName))
            End If
        End If
        cmd.Parameters.Add(New SqlParameter("@MImage", SqlDbType.NVarChar, 50)).Value = "MovieImages/" + ImageFileName
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Movie Added successfully")
            Response.Redirect("~/Admin/admin_movie.aspx")
        End If
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Delete from Movies where MovieID=@MID", con)
        cmd.Parameters.Add(New SqlParameter("@MID", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedValue
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Movie Deleted successfully")
            Response.Redirect("~/Admin/admin_movie.aspx")
        End If
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Update Movies set MovieName=@MName,MovieDetails=@MDetails,MovieImage=@MImage where MovieID=@MID", con)
        cmd.Parameters.Add(New SqlParameter("@MID", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedValue
        cmd.Parameters.Add(New SqlParameter("@MName", SqlDbType.NVarChar, 50)).Value = TextBox4.Text
        cmd.Parameters.Add(New SqlParameter("@MDetails", SqlDbType.NVarChar, 50)).Value = TextBox5.Text
        If FileUpload2.HasFile = True Then
            If FileUpload2.PostedFile IsNot Nothing Then
                myImageFile = FileUpload2.PostedFile
                ImageFileName = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName)
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Admin/Images/MovieImages/" & ImageFileName))
            End If
            cmd.Parameters.Add(New SqlParameter("@MImage", SqlDbType.NVarChar, 50)).Value = "Images/" + ImageFileName
        Else
            cmd.Parameters.Add(New SqlParameter("@MImage", SqlDbType.NVarChar, 50)).Value = Label14.Text
        End If

        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Movie Updated successfully")
            Response.Redirect("~/Admin/admin_movie.aspx")
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

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select MovieName,MovieDetails,MovieImage from Movies where MovieID=@MID", con)
        cmd.Parameters.Add(New SqlParameter("@MID", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedValue
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.HasRows Then
            reader.Read()
            Label12.Text = reader(0)
            Label13.Text = reader(1)
            Label14.Text = reader(2)
            TextBox4.Text = reader(0)
            TextBox5.Text = reader(1)
        End If
        con.Close()
        reader.Close()
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session.Abandon()
        Response.Redirect("~/Home/home.aspx")
    End Sub
End Class
