<%@ Application Language="VB" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        Dim con As SqlConnection
        Dim cmd, cmd1 As SqlCommand
        Dim strConString, strError As String
        If Session("usremail") IsNot Nothing Then
            strError = Session("usremail")
            strConString = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
            con = New SqlConnection(strConString)
            con.Open()
            cmd = New SqlCommand("Select [NewLogin] from UserLogin where Email=@email", con)
            cmd.Parameters.Add(New SqlParameter("@email", SqlDbType.NVarChar, 50)).Value = strError
            Dim a As String = cmd.ExecuteScalar
            con.Close()
            con.Open()
            cmd1 = New SqlCommand("update UserLogin set LastLogin=@NewLogin where Email=@email", con)
            cmd1.Parameters.Add(New SqlParameter("@email", SqlDbType.NVarChar, 50)).Value = strError
            cmd1.Parameters.Add(New SqlParameter("@NewLogin", SqlDbType.NVarChar, 50)).Value = a
            cmd1.ExecuteNonQuery()
            con.Close()
        Else
            
        End If
        
        
    End Sub
       
</script>