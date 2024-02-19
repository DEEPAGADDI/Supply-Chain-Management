<%-- 
    Document   : adminlogin
    Created on : Jun 30, 2023, 8:46:56 PM
    Author     : win10
--%>

<%@ include file="confile.jsp"%>
<%
String user=request.getParameter("adminname");
String pass=request.getParameter("adminpwd");
rst= stmt.executeQuery("select * from admindet where username= '" + user + "' and password='" + pass + "'");
if(user!=null)
{
    if(rst.next())
    {
        out.println("<center>Login Successful</center>");
       
        response.sendRedirect("adminpage.jsp");
    }
    else
    {
        out.println("<center><p>User Name or Password is not correct!</p></center>");
    }
}
%>
<%@ include file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
           
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Adminlogin Page</title>
    </head>
    <body>
    <center>
        
        <br><br>
        <form action="" method="post">
            <table width="30%">
              
                <tr><td colspan="2"><center><h2>Admin Login </h2></center></td></tr>
                <tr><td>Username </td><td><input class="inputfield" type="text" name="adminname" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td>Password</td><td><input class="inputfield" type="password" name="adminpwd" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td colspan="4"><center><input class="submit-btn" type="submit" value="Login"></center></td></tr>

            </table>
        </form>
    </center>
    </body>
</html>
<%@ include file="footer.jsp"%>