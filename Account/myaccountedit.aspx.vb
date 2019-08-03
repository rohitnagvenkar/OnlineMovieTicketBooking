Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class Account_myaccountedit
    Inherits System.Web.UI.Page
    Dim myImageFile As HttpPostedFile
    Dim nFileLen As Integer
    Dim result As Integer
    Dim myData As Byte()
    Dim con, con1 As SqlConnection
    Dim cmd, cmd1 As SqlCommand
    Dim reader As SqlDataReader
    Dim strConString, ImageFileName, SaveLocation, result1 As String


    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub LinkButton13_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton13.Click
        Response.Redirect("~/Contact/contact.aspx")
    End Sub

    Protected Sub LinkButton19_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton19.Click
        Response.Redirect("~/General/sitemap.aspx")
    End Sub

    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton9.Click
        Response.Redirect("~/Movies/movies.aspx")
    End Sub

    Protected Sub LinkButton14_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton14.Click
        Response.Redirect("~/Movies/movienews.aspx")
    End Sub

    Protected Sub LinkButton10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton10.Click
        Response.Redirect("~/Theaters/theaters.aspx")
    End Sub

    Protected Sub LinkButton15_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton15.Click
        Response.Redirect("~/General/faqs.aspx")
    End Sub

    Protected Sub LinkButton11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton11.Click
        Response.Redirect("~/events/movieevents.aspx")
    End Sub

    Protected Sub LinkButton12_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton12.Click
        Response.Redirect("~/Contact/contact.aspx")
    End Sub

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Call connect()
        If Session("usrname") = "" And Session("usremail") = "" Then

            Response.Redirect("~/Register/signin.aspx")
        Else
            EmailTextBox.Text = Session("usremail")
            CityTextBox.Text = Session("cityname")
        End If
        con.Open()
        cmd = New SqlCommand("Select [EmailID] from Images where EmailID='" + Session("usremail") + "'", con)
        result1 = cmd.ExecuteScalar()
        con.Close()
        If result1 = Session("usremail") Then
            PlaceHolder2.Controls.Remove(FileUploadButton)
            PlaceHolder2.Controls.Remove(SelectImageLabel)
            PlaceHolder2.Controls.Add(FileDeleteButton)
            FileUpload1.Enabled = False
        Else
            PlaceHolder2.Controls.Add(FileUploadButton)
            PlaceHolder2.Controls.Remove(FileDeleteButton)
            FileUpload1.Enabled = True
        End If
        PlaceHolder2.Controls.Remove(SelectImageLabel)
        con.Open()
        cmd = New SqlCommand("Select * from register where rEmail=@email", con)
        cmd.Parameters.Add(New SqlParameter("@email", SqlDbType.NVarChar)).Value = Session("usremail")
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.HasRows Then
            reader.Read()
            EmailTextBox.Text = reader(0)
            AlternateEmailTextBox.Text = reader(3)
            FirstNameTextBox.Text = reader(4)
            LastNameTextBox.Text = reader(5)
            CityTextBox.Text = reader(7)
            PhoneNoTextBox.Text = reader(8)
            MobileNoTextBox.Text = reader(9)
        End If
        con.Close()
        reader.Close()
        con.Close()

    End Sub

    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles UpdateButton.Click
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
        con.Open()
        cmd = New SqlCommand("Update register set rFirstName=@rfirstname,rAlternateEmail=@ralternateemail,rLastName=@rlastname,rGender=@rgender,rCity=@rcity,rPhoneNo=@rphoneno,rMobileNo=@rmobileno where rEmail=@remail", con)
        cmd.Parameters.Add(New SqlParameter("@remail", SqlDbType.VarChar, 50)).Value = Session("usremail")
        cmd.Parameters.Add(New SqlParameter("@ralternateemail", SqlDbType.VarChar, 50)).Value = AlternateEmailTextBox.Text
        cmd.Parameters.Add(New SqlParameter("@rfirstname", SqlDbType.VarChar, 50)).Value = FirstNameTextBox.Text
        cmd.Parameters.Add(New SqlParameter("@rlastname", SqlDbType.VarChar, 50)).Value = LastNameTextBox.Text
        If (MaleRadioButton.Checked = True And FemaleRadioButton.Checked = False) Then
            cmd.Parameters.Add(New SqlParameter("@rgender", SqlDbType.Char, 1)).Value = "M"
        Else
            cmd.Parameters.Add(New SqlParameter("@rgender", SqlDbType.Char, 1)).Value = "F"
        End If
        cmd.Parameters.Add(New SqlParameter("@rcity", SqlDbType.VarChar, 50)).Value = CityTextBox.Text
        cmd.Parameters.Add(New SqlParameter("@rphoneno", SqlDbType.VarChar, 50)).Value = PhoneNoTextBox.Text
        cmd.Parameters.Add(New SqlParameter("@rmobileno", SqlDbType.VarChar, 50)).Value = MobileNoTextBox.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            Response.Redirect("~/Account/myaccount.aspx")
        End If
    End Sub

    Protected Sub FileUploadButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles FileUploadButton.Click
        If FileUpload1.HasFile = True Then
            If FileUpload1.PostedFile IsNot Nothing Then
                myImageFile = FileUpload1.PostedFile
                ImageFileName = Path.GetFileName(FileUpload1.PostedFile.FileName)
                FileUpload1.PostedFile.SaveAs(Server.MapPath("Images/" & ImageFileName))
                strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
                con = New SqlConnection(strConString)
                con.Open()
                cmd = New SqlCommand("INSERT INTO Images(EmailID,ImagePath,ImageName) Values (@EmailID,@ImagePath,@ImageName)", con)
                cmd.Parameters.Add(New SqlParameter("@EmailID", SqlDbType.NVarChar, 50)).Value = Session("usremail")
                cmd.Parameters.Add(New SqlParameter("@ImagePath", SqlDbType.NVarChar, 200)).Value = "Images/" + ImageFileName
                cmd.Parameters.Add(New SqlParameter("@ImageName", SqlDbType.VarChar, 50)).Value = ImageFileName
                Dim result As Integer = cmd.ExecuteNonQuery()
                con.Close()
                If result > 0 Then
                    If Session("usremail") = "admin@admin.in" Then
                        Session("ImageName") = ImageFileName
                        Response.Redirect("~/Admin/adminaccount.aspx", True)
                    Else
                        Session("ImageName") = ImageFileName
                        Response.Redirect("~/Account/myaccount.aspx", True)
                    End If
                Else
                End If
            End If
        Else
            PlaceHolder2.Controls.Add(SelectImageLabel)
        End If
    End Sub

    Protected Sub FileDeleteButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles FileDeleteButton.Click
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
        con.Open()

        cmd = New SqlCommand("Delete from Images where EmailID='" + Session("usremail") + "'", con)
        Dim result1 As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result1 > 0 Then
            Dim path As String = Server.MapPath("~/account/Images") + "/" + Session("ImageName")

            If File.Exists(path) Then
                System.IO.File.Delete(path)
                If Session("usremail") = "admin@admin.in" Then

                    Response.Redirect("~/Admin/adminaccount.aspx", True)
                Else

                    Response.Redirect("~/Account/myaccount.aspx", True)
                End If

            End If
        End If
    End Sub

    Protected Sub AccountButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles AccountButton.Click
        Response.Redirect("~/Account/myaccount.aspx")
    End Sub

    Protected Sub SignOutButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SignOutButton.Click
        Session.RemoveAll()

        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub HomeButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles HomeButton.Click
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub MoviesButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles MoviesButton.Click
        Response.Redirect("~/Movies/movies.aspx")
    End Sub

    Protected Sub TicketsButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles TicketsButton.Click
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub CinemaButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CinemaButton.Click
        Response.Redirect("~/Theaters/theaters.aspx")
    End Sub

    Protected Sub ContactButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ContactButton.Click
        Response.Redirect("~/Contact/contact.aspx")
    End Sub

End Class
