<%-- 
    Document   : adminlogin
    Created on : 11 Apr, 2022, 11:19:38 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>

<%

String id=request.getParameter("distributorid");
String pwd=request.getParameter("distributorpwd");
rst= stmt.executeQuery("select * from distributerdet where id= '" + id + "' and password='" + pwd + "' and status='A' ");
if(id!=null)
{
    if(rst.next())
    {
        session.setAttribute("disid",rst.getString("id"));
        session.setAttribute("disname",rst.getString("distributername"));
        session.setAttribute("disemail",rst.getString("mail"));
        session.setAttribute("disphone",rst.getString("phone"));
        session.setAttribute("din",rst.getString("distribution"));
        out.println("<center>Login Successful</center>");
       
        response.sendRedirect("distributorpage.jsp");
    }
    else
    {
         response.sendRedirect("distributorlogin.jsp");
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
        <title>Distributorlogin Page</title>
<!--        <script>
            function message(){
                if(m.equals("fail")){
        
        alert(" Login Fail");
    }
            }
    
</script>-->
    </head>
    <body>
    <center>
        
        <br><br>
        <form action="" method="post">
            <table width="30%" >
                <tr><td colspan="2"><center> <h2>Distributor Login </center></h2>   </td></tr>
                <tr><td>Distributor Id</td><td><input class="inputfield" type="text" name="distributorid" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td>Distributor Password</td><td><input class="inputfield" type="password" name="distributorpwd" required></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td colspan="2"><center><input class="submit-btn" type="submit" value="Login"></center></td></tr>

            </table>
        </form>
        <br>
        <p>New distributor?&nbsp;<a href="regdistributor.jsp">Register Here</a></p>
    </center>
    <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>