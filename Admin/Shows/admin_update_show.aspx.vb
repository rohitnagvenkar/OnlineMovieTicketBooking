Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_Shows_admin_update_show
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select MovieID,TheaterID,ScreenID,ShowTime,SeatID from Show where ShowID=@SID", con)
        cmd.Parameters.Add(New SqlParameter("@SID", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedValue
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.HasRows Then
            reader.Read()
            Label1.Text = reader(0)
            Label2.Text = reader(1)
            Label3.Text = reader(2)
            Label4.Text = reader(3)
            Label5.Text = reader(4)
            TextBox1.Text = reader(0)
            TextBox2.Text = reader(1)
            TextBox3.Text = reader(2)
            TextBox4.Text = reader(3)
            TextBox5.Text = reader(4)
        End If
        con.Close()
        reader.Close()
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select SeatGold,SeatSilver,SeatPlatinum,SeatTotal,CostGold,CostSilver,CostPlatinum from Seats where SeatID=@SID", con)
        cmd.Parameters.Add(New SqlParameter("@SID", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedValue
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.HasRows Then
            reader.Read()
            Label6.Text = reader(0)
            Label7.Text = reader(1)
            Label8.Text = reader(2)
            Label9.Text = reader(3)
            Label10.Text = reader(4)
            Label11.Text = reader(3)
            Label12.Text = reader(4)

            TextBox6.Text = reader(0)
            TextBox7.Text = reader(1)
            TextBox8.Text = reader(2)
            TextBox9.Text = reader(3)
            TextBox10.Text = reader(4)
            TextBox11.Text = reader(3)
            TextBox12.Text = reader(4)
        End If
        con.Close()
        reader.Close()
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Update Show set MovieID=@MID,TheaterID=@TID,ScreenID=@SCID,ShowTime=@ST,SeatID=@SID where ShowID=@SHID", con)
        cmd.Parameters.Add(New SqlParameter("@SHID", SqlDbType.NVarChar, 50)).Value = DropDownList1.SelectedValue
        cmd.Parameters.Add(New SqlParameter("@MID", SqlDbType.NVarChar, 50)).Value = TextBox1.Text
        cmd.Parameters.Add(New SqlParameter("@TID", SqlDbType.NVarChar, 50)).Value = TextBox2.Text
        cmd.Parameters.Add(New SqlParameter("@SCID", SqlDbType.NVarChar, 50)).Value = TextBox3.Text
        cmd.Parameters.Add(New SqlParameter("@ST", SqlDbType.NVarChar, 50)).Value = TextBox4.Text
        cmd.Parameters.Add(New SqlParameter("@SID", SqlDbType.NVarChar, 50)).Value = TextBox5.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Updated successfully")
            Response.Redirect("~/Admin/Shows/admin_update_show.aspx")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Update Seats set SeatGold=@SG,SeatSilver=@SS,SeatPlatinum=@SP,SeatTotal=@ST,CostGold=@CG,CostSilver=@CS,CostPlatinum=@CP where SeatID=@SID", con)
        cmd.Parameters.Add(New SqlParameter("@SID", SqlDbType.NVarChar, 50)).Value = DropDownList2.SelectedValue
        cmd.Parameters.Add(New SqlParameter("@SG", SqlDbType.NVarChar, 50)).Value = TextBox6.Text
        cmd.Parameters.Add(New SqlParameter("@SS", SqlDbType.NVarChar, 50)).Value = TextBox7.Text
        cmd.Parameters.Add(New SqlParameter("@SP", SqlDbType.NVarChar, 50)).Value = TextBox8.Text
        cmd.Parameters.Add(New SqlParameter("@ST", SqlDbType.NVarChar, 50)).Value = TextBox9.Text
        cmd.Parameters.Add(New SqlParameter("@CG", SqlDbType.NVarChar, 50)).Value = TextBox10.Text
        cmd.Parameters.Add(New SqlParameter("@CS", SqlDbType.NVarChar, 50)).Value = TextBox11.Text
        cmd.Parameters.Add(New SqlParameter("@CP", SqlDbType.NVarChar, 50)).Value = TextBox12.Text
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result > 0 Then
            MsgBox("Updated successfully")
            Response.Redirect("~/Admin/Shows/admin_update_show.aspx")
        End If
    End Sub
End Class
