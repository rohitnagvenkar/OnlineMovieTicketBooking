Imports System.Data.SqlClient
Imports System.Data
Partial Class Account_accountviewprofile
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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Call connect()
            con.Open()
            cmd = New SqlCommand("Select [ImagePath] from Images where EmailID='" + Session("usremail") + "'", con)
            ImagePath = cmd.ExecuteScalar()
            Image1.ImageUrl = ImagePath
            con.Close()
            con.Open()
            cmd = New SqlCommand("Select * from register where rEmail=@email", con)
            cmd.Parameters.Add(New SqlParameter("@email", SqlDbType.NVarChar)).Value = Session("usremail")
            Dim reader As SqlDataReader = cmd.ExecuteReader
            If reader.HasRows Then
                reader.Read()
                Label1.Text = reader(0)
                Label2.Text = reader(3)
                Label3.Text = reader(4)
                Label4.Text = reader(5)
                Label5.Text = reader(6)
                Label6.Text = reader(7)
                Label7.Text = reader(8)
                Label8.Text = reader(9)
            End If
            con.Close()
            reader.Close()
            con.Close()
        Catch ex As Exception

        End Try
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
