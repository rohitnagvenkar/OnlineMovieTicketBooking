Imports System.Data.SqlClient
Imports System.Data
Partial Class Account_myaccount
    Inherits System.Web.UI.Page
    Dim con, con1 As SqlConnection
    Dim cmd, cmd1, cmd2 As SqlCommand
    Dim strConString, ImageFileName, SaveLocation, result1 As String
    Dim Path, ImagePath As String
    Dim validate_email As String
    Dim ValidateEmailQuery, lastlogin As String

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

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If Session("usrname") = "" Then
            Response.Redirect("~/Home/home.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("usrname") = "" Then
            Response.Redirect("~/Home/home.aspx")
        Else
            Session.Remove("counter")
            usrnameLabel.Text = "Welcome " + Session("usrname")
            Try
                Call connect()
                con.Open()
                cmd = New SqlCommand("Select [ImagePath] from Images where EmailID='" + Session("usremail") + "'", con)
                ImagePath = cmd.ExecuteScalar()
                Image1.ImageUrl = ImagePath
                con.Close()
                con.Open()
                ValidateEmailQuery = "Select [UserEmail] from UserBookingInfo where (UserEmail = '" + Session("usremail") + "')"
                cmd1 = New SqlCommand(ValidateEmailQuery, con)
                validate_email = cmd1.ExecuteScalar
                con.Close()
                con.Open()
                lastlogin = "Select [LastLogin] from UserLogin where (Email = '" + Session("usremail") + "')"
                cmd2 = New SqlCommand(lastlogin, con)
                Label5.Text = cmd2.ExecuteScalar
                con.Close()
            Catch ex As Exception

            End Try
        End If
        
    End Sub

    Protected Sub SignOutButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SignOutButton.Click
        Session.Abandon()
        Response.Redirect("~/Home/home.aspx")
    End Sub

    Protected Sub ChangeMobileNoButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ChangeMobileNoButton.Click
        Response.Redirect("~/Account/myaccountedit.aspx")
    End Sub

    Protected Sub ChangeImageButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ChangeImageButton.Click
        Response.Redirect("~/Account/myaccountedit.aspx")
    End Sub

    Protected Sub TicketInfoButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles TicketInfoButton.Click
        Response.Redirect("~/Account/accountticketinfo.aspx")
    End Sub

    Protected Sub BookTicketButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles BookTicketButton.Click
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select * from UserBookingInfo where UserEmail=@email", con)
        cmd.Parameters.Add(New SqlParameter("@email", SqlDbType.NVarChar)).Value = Session("usremail")
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.HasRows Then
            Label6.Text = "You can book only 1 ticket"
        Else
            Response.Redirect("~/Tickets/tickets.aspx")
            con.Close()
            reader.Close()
        End If
        con.Close()
        reader.Close()
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

    Protected Sub ViewProfileButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ViewProfileButton.Click
        Response.Redirect("~/Account/accountviewprofile.aspx")
    End Sub

    Protected Sub MyAccountButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyAccountButton.Click
        Response.Redirect("~/Account/myaccount.aspx")
    End Sub
End Class
