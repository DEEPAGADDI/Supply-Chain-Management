<%-- 
    Document   : adminlogin
    Created on : 11 Apr, 2022, 11:19:38 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
String id=request.getParameter("purchaserid");
String pwd=request.getParameter("purchaserpwd");
rst= stmt.executeQuery("select * from purchaserdet where id= '" + id + "' and password='" + pwd + "' and status='A' ");
if(id!=null)
{
    if(rst.next())
    {
        session.setAttribute("pid",rst.getString("id"));
        session.setAttribute("pname",rst.getString("purchasername"));
        session.setAttribute("pemail",rst.getString("email"));
        session.setAttribute("purphone",rst.getString("phone"));
        
        out.println("<center>Login Successful</center>");
       
        response.sendRedirect("purchaserpage.jsp");
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
        <title>Purchaserlogin Page</title>
    </head>
    <body>
        <style>
            
        </style>
    <center>
       
        <br><br>
        <form action="" method="post">
            <table width="30%" >
                <tr><td colspan="2"><center> <h2>Purchaser Login </center></h2>   </td></tr>
                <tr><td>Purchaser Id</td><td><input class="inputfield" type="text" name="purchaserid" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td>Purchaser Password</td><td><input class="inputfield" type="password" name="purchaserpwd" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td colspan="2"><center><input class="submit-btn" type="submit" value="Login"></center></td></tr>

            </table>
        </form>
        <br>
        <p>New Purchaser?&nbsp;<a href="regpurchaser.jsp">Register Here</a></p>
    </center>
    <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>