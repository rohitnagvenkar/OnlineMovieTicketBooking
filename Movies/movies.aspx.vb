Imports System.Data.SqlClient
Imports System.Data
Partial Class Movies_movies
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

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Call connect()
        con.Open()
        cmd = New SqlCommand("Select MovieImage from Movies order by NEWID()", con)
        Dim reader As SqlDataReader = cmd.ExecuteReader
        Dim intindex As Integer
        While reader.Read
            arrlst.Insert(intindex, reader.GetValue(0))
            intindex += 1
        End While
        con.Close()
        reader.Close()
        Image1.ImageUrl = "~/Admin/Images/" + arrlst.Item(0)
        LinkButton1.Text = getname(arrlst.Item(0))
        Image2.ImageUrl = "~/Admin/Images/" + arrlst.Item(1)
        LinkButton2.Text = getname(arrlst.Item(1))
        Image3.ImageUrl = "~/Admin/Images/" + arrlst.Item(2)
        LinkButton3.Text = getname(arrlst.Item(2))
        Image4.ImageUrl = "~/Admin/Images/" + arrlst.Item(3)
        LinkButton4.Text = getname(arrlst.Item(3))
        Image5.ImageUrl = "~/Admin/Images/" + arrlst.Item(4)
        LinkButton5.Text = getname(arrlst.Item(4))
        Image6.ImageUrl = "~/Admin/Images/" + arrlst.Item(5)
        LinkButton6.Text = getname(arrlst.Item(5))
        Image7.ImageUrl = "~/Admin/Images/" + arrlst.Item(6)
        LinkButton7.Text = getname(arrlst.Item(6))
        Image8.ImageUrl = "~/Admin/Images/" + arrlst.Item(7)
        LinkButton8.Text = getname(arrlst.Item(7))
        Image9.ImageUrl = "~/Admin/Images/" + arrlst.Item(8)
        LinkButton9.Text = getname(arrlst.Item(8))
        Image10.ImageUrl = "~/Admin/Images/" + arrlst.Item(9)
        LinkButton10.Text = getname(arrlst.Item(9))
        Image11.ImageUrl = "~/Admin/Images/" + arrlst.Item(10)
        LinkButton11.Text = getname(arrlst.Item(10))
        Image12.ImageUrl = "~/Admin/Images/" + arrlst.Item(11)
        LinkButton12.Text = getname(arrlst.Item(11))
        Image13.ImageUrl = "~/Admin/Images/" + arrlst.Item(12)
        LinkButton13.Text = getname(arrlst.Item(12))
        Image14.ImageUrl = "~/Admin/Images/" + arrlst.Item(13)
        LinkButton14.Text = getname(arrlst.Item(13))
        Image15.ImageUrl = "~/Admin/Images/" + arrlst.Item(14)
        LinkButton15.Text = getname(arrlst.Item(14))
        Image16.ImageUrl = "~/Admin/Images/" + arrlst.Item(15)
        LinkButton16.Text = getname(arrlst.Item(15))
        con.Close()
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

    Protected Sub ImageButton11_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton11.Click
        Session("movies") = LinkButton11.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton12_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton12.Click
        Session("movies") = LinkButton12.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton13_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton13.Click
        Session("movies") = LinkButton13.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton14_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton14.Click
        Session("movies") = LinkButton14.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton15_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton15.Click
        Session("movies") = LinkButton15.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub

    Protected Sub ImageButton16_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton16.Click
        Session("movies") = LinkButton16.Text
        Response.Redirect("~/Tickets/tickets.aspx")
    End Sub
End Class
