Imports System.Data.SqlClient
Imports System.Data
Partial Class Contact_contact
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String
    Dim Path, ImagePath As String
    Dim arrlst, arrlst1 As New ArrayList(30)
    Dim fso, fso1, f, f1 As Object
    Dim txtstr, filespec, txtstr1, filespec1 As String

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Insert into FeedBack (UserEmail,UserName,UserFeedBack) values (@a,@b,@c)", con)
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = TextBox2.Text
        cmd.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = TextBox3.Text
        cmd.Parameters.Add(New SqlParameter("@c", SqlDbType.NVarChar, 50)).Value = TextBox1.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Your Feedback Submitted successfully")
            Response.Redirect("~/Contact/contact.aspx")
        End If
    End Sub
End Class
