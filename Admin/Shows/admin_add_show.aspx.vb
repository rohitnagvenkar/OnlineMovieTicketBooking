Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_Shows_admin_add_show
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
        cmd = New SqlCommand("Insert into Show (ShowID,MovieID,TheaterID,ScreenID,ShowTime,SeatID) values(@ShID,@MID,@ThID,@ScID,@ST,@SeID)", con)
        cmd.Parameters.Add(New SqlParameter("@ShID", SqlDbType.NVarChar, 50)).Value = TextBox1.Text
        cmd.Parameters.Add(New SqlParameter("@MID", SqlDbType.NVarChar, 50)).Value = TextBox2.Text
        cmd.Parameters.Add(New SqlParameter("@ThID", SqlDbType.NVarChar, 50)).Value = TextBox3.Text
        cmd.Parameters.Add(New SqlParameter("@ScID", SqlDbType.NVarChar, 50)).Value = TextBox4.Text
        cmd.Parameters.Add(New SqlParameter("@ST", SqlDbType.NVarChar, 50)).Value = TextBox5.Text
        cmd.Parameters.Add(New SqlParameter("@SeID", SqlDbType.NVarChar, 50)).Value = TextBox6.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Show added")
            Response.Redirect("~/Admin/Shows/admin_add_show.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Insert into Seats (SeatID,SeatGold,SeatSilver,SeatPlatinum,SeatTotal,CostGold,CostSilver,CostPlatinum)" &
                             "values(@SeatID,@SeatGold,@SeatSilver,@SeatPlatinum,@SeatTotal,@CostGold,@CostSilver,@CostPlatinum)", con)
        cmd.Parameters.Add(New SqlParameter("@SeatID", SqlDbType.NVarChar, 50)).Value = TextBox7.Text
        cmd.Parameters.Add(New SqlParameter("@SeatGold", SqlDbType.NVarChar, 50)).Value = TextBox8.Text
        cmd.Parameters.Add(New SqlParameter("@SeatSilver", SqlDbType.NVarChar, 50)).Value = TextBox9.Text
        cmd.Parameters.Add(New SqlParameter("@SeatPlatinum", SqlDbType.NVarChar, 50)).Value = TextBox10.Text
        cmd.Parameters.Add(New SqlParameter("@SeatTotal", SqlDbType.NVarChar, 50)).Value = TextBox11.Text
        cmd.Parameters.Add(New SqlParameter("@CostGold", SqlDbType.NVarChar, 50)).Value = TextBox12.Text
        cmd.Parameters.Add(New SqlParameter("@CostSilver", SqlDbType.NVarChar, 50)).Value = TextBox13.Text
        cmd.Parameters.Add(New SqlParameter("@CostPlatinum", SqlDbType.NVarChar, 50)).Value = TextBox14.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Seat added")
            Response.Redirect("~/Admin/Shows/admin_add_show.aspx")
        End If
    End Sub
End Class
