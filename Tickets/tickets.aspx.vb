Imports System.Data.SqlClient
Imports System.Data

Partial Class Tickets_tickets
    Inherits System.Web.UI.Page
    Dim date1 As Date
    Dim con As SqlConnection
    Dim cmd, cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation As String
    Dim Path, ImagePath As String
    Dim arrlst, arrlst1 As New ArrayList()
    Dim list As List(Of String) = New List(Of String)
    Dim a, b, c, d As String
    Dim a1, b1, c1 As Integer
    Dim SGTot, SSTot, SPTot, ttl1 As Integer
    Dim SGold1, SSilver1, SPlatinum1, STotal1, CGold1, CSilver1, CPlatinum1, NOS1 As Integer

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("usrname") = "" Then
            Response.Redirect("~/Register/signin.aspx")
        Else
            PlaceHolder1.Controls.Remove(Panel2)
            Label10.Visible = False
            If Session("movies") = "" Then
                Response.Redirect("~/Home/home.aspx")
            Else
                If DropDownList3.Items.Count > arrlst.Count + 1 Then
                Else
                    MovieNameLabel.Text = Session("movies")
                    Call connect()
                    con.Open()
                    cmd = New SqlCommand("Select distinct Show.TheaterID from Show Inner Join Theater On Show.TheaterID=Theater.TheaterID where Show.MovieID=@a and Theater.TheaterLocation=@b", con)
                    cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = getMovieid(MovieNameLabel.Text)
                    cmd.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = Session("city")
                    Dim reader As SqlDataReader = cmd.ExecuteReader
                    While reader.Read
                        arrlst.Add(reader.GetString(0))
                    End While
                    con.Close()
                    reader.Close()
                    For i As Integer = 0 To arrlst.Count - 1
                        DropDownList3.Items.Insert(i + 1, getTheatername(arrlst.Item(i)))
                    Next
                End If
            End If
        End If
    End Sub

    Function getTheatername(ByVal a As String) As String
        Call connect()
        con.Open()
        cmd1 = New SqlCommand("Select [TheaterName] from Theater where TheaterID=@a", con)
        cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = a
        Dim b As String = cmd1.ExecuteScalar()
        con.Close()
        Return b
    End Function

    Function getMovieid(ByVal a As String) As String
        Call connect()
        con.Open()
        cmd1 = New SqlCommand("Select [MovieID] from Movies where MovieName=@a", con)
        cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = a
        Dim b As String = cmd1.ExecuteScalar()
        con.Close()
        Return b
    End Function

    Function getTheaterid(ByVal a As String) As String
        Call connect()
        con.Open()
        cmd1 = New SqlCommand("Select [TheaterID] from Theater where TheaterName=@a", con)
        cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = Session("theater")
        Dim b As String = cmd1.ExecuteScalar()
        con.Close()
        Return b
    End Function

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If DropDownList3.SelectedValue = "0" Then
            theatererrorLabel.Visible = True
        Else
            theatererrorLabel.Visible = False
            Try
                Call connect()
                con.Open()
                ListBox1.Items.Clear()
                Session("theater") = DropDownList3.SelectedItem.Text
                If Session("theater") = "" Then

                Else
                    cmd = New SqlCommand("Select ShowTime from Show where MovieID=@a and TheaterID=@b", con)
                    cmd.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar, 50)).Value = getMovieid(MovieNameLabel.Text)
                    cmd.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar, 50)).Value = getTheaterid(Session("theater"))
                    Dim reader As SqlDataReader = cmd.ExecuteReader
                    While reader.Read
                        ListBox1.Items.Add(reader.GetString(0))
                    End While
                    con.Close()
                    reader.Close()
                    DropDownList4.Items.Add(System.DateTime.Today.AddDays(1))
                    DropDownList4.Items.Add(System.DateTime.Today.AddDays(2))
                End If
            Catch ex As Exception

            End Try
        End If
        

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If ListBox1.SelectedItem IsNot Nothing Then
            listbxlabel.Visible = False
            Try
                Image21.Visible = True
                Call connect()
                con.Open()
                cmd2 = New SqlCommand("SELECT Seats.SeatGold, Seats.SeatSilver, Seats.SeatPlatinum,Seats.SeatTotal, Seats.CostGold,Seats.CostSilver,Seats.CostPlatinum,Show.ShowID from Show INNER JOIN Seats ON Show.SeatID = Seats.SeatID WHERE (Show.MovieID = @a) AND (Show.TheaterID = @b)", con)
                cmd2.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = getMovieid(MovieNameLabel.Text)
                cmd2.Parameters.Add(New SqlParameter("@b", SqlDbType.NVarChar)).Value = getTheaterid(Session("theater"))
                con.Open()
                Dim reader1 As SqlDataReader = cmd2.ExecuteReader
                While reader1.Read()
                    ReadSingleRow(CType(reader1, IDataRecord))
                End While
                con.Close()
                reader1.Close()
                DropDownList1.Visible = True
                Label7.Visible = True
                PlaceHolder1.Controls.Add(Panel2)
                RadioButton1.Text = CGold.Value
                RadioButton2.Text = CSilver.Value
                RadioButton3.Text = CPlatinum.Value
                SGold1 = CInt(SGold.Value)
                SSilver1 = CInt(SSilver.Value)
                SPlatinum1 = CInt(SPlatinum.Value)
                STotal1 = CInt(STotal.Value)
            Catch ex As Exception

            End Try
        Else
            listbxlabel.Visible = True
        End If
    End Sub

    Sub ReadSingleRow(ByVal record As IDataRecord)
        SGold.Value = record(0)
        SSilver.Value = record(1)
        SPlatinum.Value = record(2)
        STotal.Value = record(3)
        CGold.Value = record(4)
        CSilver.Value = record(5)
        CPlatinum.Value = record(6)
        ShowID.Value = record(7)
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
       Try
                NOS1 = CInt(DropDownList1.SelectedItem.Value)
                If RadioButton1.Checked = True Then
                    SGTot = SGold.Value - NOS1
                    If SGold.Value > NOS1 = True Then
                        ttl1 = STotal.Value - NOS1
                        Session("sgold") = SGTot
                        Session("stotal") = ttl1
                        Session("classname") = "Gold"
                        Session("classcost") = RadioButton1.Text
                        Session("showtime") = ListBox1.SelectedValue
                        Session("seatselected") = NOS1
                    Session("showID") = ShowID.Value
                    Session("date") = DropDownList4.SelectedValue
                        Response.Redirect("~/Tickets/ticketbooking.aspx")
                    Else
                       SeatLabel.Text = DropDownList1.SelectedItem.Value + " Seats are unavailable"
                        SeatLabel.Visible = True

                    End If

                ElseIf RadioButton2.Checked = True Then
                    SGTot = SSilver.Value - NOS1
                    If SSilver.Value > NOS1 = True Then
                    ttl1 = STotal.Value - NOS1
                        Session("sgold") = SGTot
                        Session("stotal") = ttl1
                        Session("classname") = "Silver"
                        Session("classcost") = RadioButton2.Text
                        Session("showtime") = ListBox1.SelectedValue
                        Session("seatselected") = NOS1
                    Session("showID") = ShowID.Value
                    Session("date") = DropDownList4.SelectedValue
                        Response.Redirect("~/Tickets/ticketbooking.aspx")
                    Else
                        SeatLabel.Text = DropDownList1.SelectedItem.Value + " Seats are unavailable"
                        SeatLabel.Visible = True
                    End If

                ElseIf RadioButton3.Checked = True Then
                SGTot = SPlatinum.Value - NOS1
                If SPlatinum.Value > NOS1 = True Then
                    ttl1 = STotal.Value - NOS1
                    Session("sgold") = SGTot
                    Session("stotal") = ttl1
                    Session("classname") = "Platinum"
                    Session("classcost") = RadioButton3.Text
                    Session("showtime") = ListBox1.SelectedValue
                    Session("seatselected") = NOS1
                    Session("showID") = ShowID.Value
                    Session("date") = DropDownList4.SelectedValue
                    Response.Redirect("~/Tickets/ticketbooking.aspx")
                Else
                    SeatLabel.Text = DropDownList1.SelectedItem.Value + " Seats are unavailable"
                    SeatLabel.Visible = True
                End If

                End If
            Catch ex As Exception

            End Try
    End Sub

End Class
