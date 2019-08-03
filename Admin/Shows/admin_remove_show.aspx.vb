Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_Shows_admin_remove_show
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Delete from Show where ShowID=@SID", con)
        cmd.Parameters.Add(New SqlParameter("@SID", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedItem.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Deleted successfully")
            Response.Redirect("~/Admin/Shows/admin_remove_show.aspx")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Delete from Seats where SeatID=@SID", con)
        cmd.Parameters.Add(New SqlParameter("@SID", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedItem.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Deleted successfully")
            Response.Redirect("~/Admin/Shows/admin_remove_show.aspx")
        End If
    End Sub
End Class
