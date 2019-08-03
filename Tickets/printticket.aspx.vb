
Partial Class Tickets_printticket
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("seatselected")
        Label4.Text = Session("movies")
        Label5.Text = Session("date")
        Label6.Text = Session("showtime")
        Label7.Text = Session("classname")
        Label8.Text = Session("ticketcost")
        Label9.Text = Session("theater")
        Label11.Text = Session("ticketno")
    End Sub

    Protected Sub Label8_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label8.Load

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("~/Account/myaccount.aspx")
    End Sub
End Class
