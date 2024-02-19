<%-- 
    Document   : adminlogin
    Created on : 11 Apr, 2022, 11:19:38 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
String id=request.getParameter("manufactureid");
String pwd=request.getParameter("manufacturepwd");
rst= stmt.executeQuery("select * from manufacturedet where id= '" + id + "' and password='" + pwd + "' and status='A' ");
if(id!=null)
{
    if(rst.next())
    {
        session.setAttribute("mId",rst.getString("id"));
        session.setAttribute("mName",rst.getString("companyname"));
        session.setAttribute("mEmail",rst.getString("email"));
        session.setAttribute("mPhone",rst.getString("phone"));
        session.setAttribute("mAddress",rst.getString("address"));
        session.setAttribute("mProduct",rst.getString("producttype"));
        out.println("<center>Login Successful</center>");
       
        response.sendRedirect("manufacturepage.jsp");
    }
    else
    {
        out.println("<center><p>User Id or Password is not correct!</p></center>");
    }
}
%>

<%@ include file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Manufacturelogin Page</title>
    </head>
    <body>
    <center>
        
        <br><br>
        <form action="" method="post">
            <table width="30%" >
                <tr><td colspan="2"><center> <h2>Manufacture Login </center></h2>   </td></tr>
                <tr><td>Manufacture Id</td><td><input class="inputfield" type="text" name="manufactureid" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td>Manufacture Password</td><td><input class="inputfield" type="password" name="manufacturepwd" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td colspan="2"><center><input class="submit-btn" type="submit" value="Login"></center></td></tr>

            </table>
        </form>
        
        <p>New manufacturer?&nbsp;<a href="regmanufacture.jsp">Register Here</a></p> 
        <p>Forgotten Password?&nbsp;<a href="forgetmanu.jsp">Click Here</a></p>
    </center>
    <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>