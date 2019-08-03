Imports System.Data.SqlClient
Imports System.Data

Partial Class Theaters_theater
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String
    Dim Path, ImagePath As String
    Dim arrlst, arrlst1 As New ArrayList()

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select TheaterName from Theater where TheaterLocation=@a", con)
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = DropDownList1.SelectedValue
        Dim reader As SqlDataReader = cmd.ExecuteReader
        While reader.Read
            arrlst.Add(reader.GetValue(0))
            End While
        con.Close()
        reader.Close()
        DropDownList2.DataSource = arrlst
        DropDownList2.DataBind()
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select a.TheaterName,a.TheaterAddress,a.City,a.State,a.PhoneNo from TLocation as a Inner Join Theater as b On b.TheaterID=a.LocationID where b.TheaterLocation=@a and b.TheaterName=@b", con)
        cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = DropDownList1.SelectedValue
        cmd.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar)).Value = DropDownList2.SelectedValue
        Dim reader As SqlDataReader = cmd.ExecuteReader
        While reader.Read
            Label4.Text = reader.GetValue(0) & ", "
            Label5.Text = reader.GetValue(1) & ", "
            Label6.Text = reader.GetValue(2)
            Label7.Text = reader.GetValue(3)
            Label8.Text = reader.GetValue(4)
        End While
        con.Close()
        reader.Close()
        PlaceHolder1.Visible = True
        Image21.Visible = True
    End Sub

End Class
