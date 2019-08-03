Imports System.Data.SqlClient
Imports System.Data
Partial Class Register_signin
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim ValidateEmailQuery, ValidatePasswordQuery, validate_email, validate_password, validate_name, NameQuery, cityquery, validate_city, a, b As String
    Dim cmd1, cmd2, cmd3, cmd4 As SqlCommand
    Dim strConString As String

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
    End Sub

    Protected Sub LoginSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LoginSubmit.Click
        Try
            Session("counter") += 1
            If Session("counter") > 3 Then
                Response.Redirect("~/Register/loginfail.aspx", False)
            Else
                If LoginEmailTextBox.Text = "" OrElse LoginPasswordTextBox.Text = "" Then
                    Label1.Visible = True
                Else
                    Label1.Visible = False
                    a = LoginEmailTextBox.Text
                    b = LoginPasswordTextBox.Text
                    Call connect()
                    ValidateEmailQuery = "Select [rEmail] from register where (rEmail = '" + LoginEmailTextBox.Text + "')"
                    ValidatePasswordQuery = "Select [rConfirmPassword] from register where (rConfirmPassword = '" + LoginPasswordTextBox.Text + "')"
                    NameQuery = "Select [rFirstName] from register where (rEmail = '" + LoginEmailTextBox.Text + "')"
                    cityquery = "Select [rCity] from register where (rEmail = '" + LoginEmailTextBox.Text + "')"
                    con.Open()
                    cmd1 = New SqlCommand(ValidateEmailQuery, con)
                    validate_email = cmd1.ExecuteScalar
                    con.Close()
                    con.Open()
                    cmd2 = New SqlCommand(ValidatePasswordQuery, con)
                    validate_password = cmd2.ExecuteScalar
                    con.Close()
                    con.Open()
                    cmd3 = New SqlCommand(NameQuery, con)
                    validate_name = cmd3.ExecuteScalar
                    con.Close()
                    con.Open()
                    cmd4 = New SqlCommand(cityquery, con)
                    validate_city = cmd4.ExecuteScalar
                    con.Close()
                    If a = "admin@admin.in" = True AndAlso b = "admin" = True Then
                        Session("usrname") = validate_name
                        Session("usremail") = validate_email
                        Response.Redirect("~/Admin/admin_main.aspx", True)
                    ElseIf a = validate_email = True AndAlso b = validate_password = True Then
                        Session("usrname") = validate_name
                        Session("usremail") = validate_email
                        Session("city") = validate_city
                        con.Open()
                        cmd1 = New SqlCommand("update UserLogin set NewLogin=@NewLogin where Email=@email", con)
                        cmd1.Parameters.Add(New SqlParameter("@email", SqlDbType.NVarChar, 50)).Value = Session("usremail")
                        cmd1.Parameters.Add(New SqlParameter("@NewLogin", SqlDbType.NVarChar, 50)).Value = Now
                        cmd1.ExecuteNonQuery()
                        con.Close()
                        Session("city") = validate_city
                        Response.Redirect("~/Account/myaccount.aspx", True)
                    Else
                        CheckLoginEmailLabel.Visible = True
                    End If
                End If
            End If

        Catch ex As Exception

        Finally

        End Try

    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

End Class
