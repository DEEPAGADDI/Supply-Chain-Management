<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<% 
    String prodidinput = request.getParameter("enterprodid");
    String getprod = (String)session.getAttribute("mProduct");
            
    rst=stmt.executeQuery("select * from addproductdet where prodid='"+prodidinput+"'");
    if(prodidinput!=null){
        if(rst.next()){
            response.sendRedirect("manufactureviewstockdb.jsp?enterprodid="+prodidinput+" ");
        }
        else{
            out.println("<center>Product Id Not Registered</center>");
        }
    }
%>

<%@ include file="headermanufacture.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Manufacture View Stock</title>
    </head>
    <body>
        <center>
        
            <br><br><br>
            <form action="" method="post">
                <table width="30%">
                   <tr><td colspan="2"><center><h2>View Stock Details</h2></center></td></tr>
                   <tr><td>Enter Product Id</td><td><input class="inputfield" type="text" name="enterprodid" required></td></tr>

                   <tr><td colspan="2"><center><input class="submit-btn" type="submit" value="Search"></center></td></tr>

                </table>
            </form>
       </center>
       <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>