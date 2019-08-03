Imports System.Data.SqlClient
Imports System.Data
Partial Class Home_home
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

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select MovieImage from Movies order by NEWID()", con)
        Dim reader As SqlDataReader = cmd.ExecuteReader
        While reader.Read
            arrlst.Add(reader.GetValue(0))
        End While
        con.Close()
        reader.Close()
        If arrlst.Count > 5 Then

            Image1.ImageUrl = "~/Admin/Images/" + arrlst.Item(0)
            LinkButton1.Text = getname(arrlst.Item(0))
            TextBox1.Text = getdetail((arrlst.Item(0)))
            Image2.ImageUrl = "~/Admin/Images/" + arrlst.Item(1)
            LinkButton2.Text = getname(arrlst.Item(1))
            TextBox2.Text = getdetail((arrlst.Item(1)))

            Image3.ImageUrl = "~/Admin/Images/" + arrlst.Item(2)
            LinkButton3.Text = getname(arrlst.Item(2))
            TextBox3.Text = getdetail((arrlst.Item(2)))

            Image4.ImageUrl = "~/Admin/Images/" + arrlst.Item(3)
            LinkButton4.Text = getname(arrlst.Item(3))
            TextBox4.Text = getdetail((arrlst.Item(3)))

            Image5.ImageUrl = "~/Admin/Images/" + arrlst.Item(4)
            LinkButton5.Text = getname(arrlst.Item(4))
            TextBox5.Text = getdetail((arrlst.Item(4)))

            Image6.ImageUrl = "~/Admin/Images/" + arrlst.Item(5)
            LinkButton6.Text = getname(arrlst.Item(5))
            TextBox6.Text = getdetail((arrlst.Item(5)))

            Image7.ImageUrl = "~/Admin/Images/" + arrlst.Item(6)
            LinkButton20.Text = getname(arrlst.Item(6))
            TextBox7.Text = getdetail((arrlst.Item(6)))

            Image8.ImageUrl = "~/Admin/Images/" + arrlst.Item(7)
            LinkButton21.Text = getname(arrlst.Item(7))
            TextBox8.Text = getdetail((arrlst.Item(7)))

            Image9.ImageUrl = "~/Admin/Images/" + arrlst.Item(8)
            LinkButton22.Text = getname(arrlst.Item(8))
            TextBox9.Text = getdetail((arrlst.Item(8)))

            Image10.ImageUrl = "~/Admin/Images/" + arrlst.Item(9)
            LinkButton23.Text = getname(arrlst.Item(9))
            TextBox10.Text = getdetail((arrlst.Item(9)))

        End If
        con.Close()
    End Sub

    Function getname(ByVal a As String) As String
        Call connect()
        con.Open()
        cmd1 = New SqlCommand("Select [MovieName] from Movies where MovieImage=@a", con)
        cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = a
        Dim b As String = cmd1.ExecuteScalar()
        con.Close()
        Return b
    End Function

    Function getdetail(ByVal a As String) As String
        Call connect()
        con.Open()
        cmd1 = New SqlCommand("Select [MovieDetails] from Movies where MovieImage=@a", con)
        cmd1.Parameters.Add(New SqlParameter("@a", SqlDbType.NVarChar)).Value = a
        Dim b As String = cmd1.ExecuteScalar()
        con.Close()
        Return b
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        usrnameLabel.Text = "" + Session("usrname")
        If Session("usrname") = "" Then
            PlaceHolder1.Controls.Add(SignInButton)
            PlaceHolder1.Controls.Add(RegisterButton)
            PlaceHolder1.Controls.Remove(SignOutButton)
            PlaceHolder1.Controls.Remove(AccountButton)
        Else
            PlaceHolder1.Controls.Add(SignOutButton)
            PlaceHolder1.Controls.Add(AccountButton)
            PlaceHolder1.Controls.Remove(SignInButton)
            PlaceHolder1.Controls.Remove(RegisterButton)
        End If

    End Sub

    Protected Sub SignInButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SignInButton.Click
        Response.Redirect("~/Register/signin.aspx")
    End Sub

    Protected Sub AccountButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles AccountButton.Click
        If Session("usrname") = "Admin" Then
            Response.Redirect("~/Admin/admin_main.aspx")
        Else
            Response.Redirect("~/Account/myaccount.aspx")
        End If
    End Sub

    Protected Sub SignOutButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SignOutButton.Click
        Session.RemoveAll()
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub RegisterButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles RegisterButton.Click
        Response.Redirect("~/Register/signup.aspx")
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

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session("movies") = LinkButton1.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Session("movies") = LinkButton2.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub


    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Session("movies") = LinkButton3.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Session("movies") = LinkButton4.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Session("movies") = LinkButton5.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton6_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        Session("movies") = LinkButton6.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton7_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton7.Click
        Session("movies") = LinkButton7.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Session("movies") = LinkButton8.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton9_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton9.Click
        Session("movies") = LinkButton9.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton10_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton10.Click
        Session("movies") = LinkButton10.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

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

End Class
