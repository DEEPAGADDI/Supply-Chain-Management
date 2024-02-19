
<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerdistributor.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>View Stock</title>
    </head>
    <body>
        <center>
            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="7"><center><h2>All Stocks List</h2></center></td></tr>
            <tr style="color: #1e247c;"><td>Product Id*</td><td>Product Name*</td><td>Distribution Cost*</td><td>Quantity Purchased*</td></tr>
            <br>
            <% 
             String prodidinput = (String)session.getAttribute("disid");
             rst=stmt.executeQuery("select * from buystock where did= '"+prodidinput+"' and approve='A' order by prodid desc");
             while( rst.next())
             {
                 out.println("<tr> <td> " +rst.getString("prodid")+ " </td> <td> " + rst.getString("prodname")+ "</td> <td> " + rst.getString("dcost")+ "</td><td>"+rst.getString("quantity")+ " </td></tr> " );
             }


            %>      

            </table>  
            <br><br><br>
       </center>
       <br><br><br><br><br>
    
    </body>
</html>
<%@ include file="footer.jsp"%>