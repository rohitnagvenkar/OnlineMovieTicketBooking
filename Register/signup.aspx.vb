Imports System.Data.SqlClient
Imports System.Data

Partial Class Register_signup
    Inherits System.Web.UI.Page

    Dim con, con1 As SqlConnection
    Dim cmd, cmd1, cmd2 As SqlCommand
    Dim da As SqlDataAdapter
    Dim ValidateQuery As String
    Dim validate_email As String
    Dim strConString As String

    Sub connect()
        strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        con = New SqlConnection(strConString)
        con1 = New SqlConnection(strConString)
    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Submit.Click
        Try
            Call connect()
            con.Open()
            cmd = New SqlCommand("insert into register" & "(rEmail,rPassword,rConfirmPassword,rAlternateEmail,rFirstName,rLastName,rGender,rCity,rPhoneNo,rMobileNo)" &
                                 "values(@remail,@rpass,@rconfirmpass,@ralternateemail,@rfirstname,@rlastname,@rgender,@rcity,@rphoneno,@rmobileno)", con)
            ValidateQuery = "Select [rEmail] from register where (rEmail = '" + EmailTextBox.Text + "')"
            cmd1 = New SqlCommand(ValidateQuery, con)
            validate_email = cmd1.ExecuteScalar
            If IsNothing(validate_email) Then
                EmailErrorLabel.Visible = False
                cmd.Parameters.Add(New SqlParameter("@remail", SqlDbType.VarChar, 50)).Value = EmailTextBox.Text
                cmd.Parameters.Add(New SqlParameter("@rpass", SqlDbType.VarChar, 50)).Value = PasswordTextBox.Text
                cmd.Parameters.Add(New SqlParameter("@rconfirmpass", SqlDbType.VarChar, 50)).Value = ConfirmPasswordTextBox.Text
                cmd.Parameters.Add(New SqlParameter("@ralternateemail", SqlDbType.VarChar, 50)).Value = AlternateEmailTextBox.Text
                cmd.Parameters.Add(New SqlParameter("@rfirstname", SqlDbType.VarChar, 50)).Value = FirstNameTextBox.Text
                cmd.Parameters.Add(New SqlParameter("@rlastname", SqlDbType.VarChar, 50)).Value = LastNameTextBox.Text
                If (MaleRadioButton.Checked = True And FemaleRadioButton.Checked = False) Then
                    cmd.Parameters.Add(New SqlParameter("@rgender", SqlDbType.Char, 1)).Value = "M"
                Else
                    cmd.Parameters.Add(New SqlParameter("@rgender", SqlDbType.Char, 1)).Value = "F"
                End If
                cmd.Parameters.Add(New SqlParameter("@rcity", SqlDbType.VarChar, 50)).Value = CityTextBox.Text
                cmd.Parameters.Add(New SqlParameter("@rphoneno", SqlDbType.VarChar, 50)).Value = PhoneNoTextBox.Text
                cmd.Parameters.Add(New SqlParameter("@rmobileno", SqlDbType.VarChar, 50)).Value = MobileNoTextBox.Text
                Dim result As Integer = cmd.ExecuteNonQuery()
                con.Close()
                If result > 0 Then

                    con.Open()
                    cmd2 = New SqlCommand("insert into UserLogin (Email,LastLogin,NewLogin) values(@email,@LLogin,@newlog)", con)
                    cmd2.Parameters.Add(New SqlParameter("@email", SqlDbType.NVarChar, 50)).Value = EmailTextBox.Text
                    cmd2.Parameters.Add(New SqlParameter("@LLogin", SqlDbType.NVarChar, 50)).Value = "NULL"
                    cmd2.Parameters.Add(New SqlParameter("@newlog", SqlDbType.NVarChar, 50)).Value = Now
                    Dim result5 As Integer = cmd2.ExecuteNonQuery()
                    If result5 > 0 Then

                    End If

                    Response.Redirect("~/Register/signin.aspx")
                Else


                End If

            Else
                EmailErrorLabel.Text = "Email ID already exists..."
                EmailErrorLabel.Visible = True
                con.Close()
            End If

        Catch ex As Exception

        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub PhoneNoTextBox_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles PhoneNoTextBox.TextChanged

    End Sub
End Class
