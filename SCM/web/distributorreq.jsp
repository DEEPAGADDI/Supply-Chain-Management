<%-- 
    Document   : adminpage
    Created on : 11 Apr, 2022, 11:37:30 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%@ include file="headermanufacture.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Distributor Request </title>
    </head>
    <body>
    <center>
        
        <br><br>
        
        <form method="POST" action="confirmdistributorreq.jsp">

            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="8"><center><h2>Distributor Request Details</h2></center></td></tr>
            <tr style="color: #1e247c;"><td>Product Id*</td><td>Product Name*</td><td>Distribution Cost*</td><td>Quantity Required*</td><td>Distributor Id*</td><td>Distributor Name*</td><td>Email*</td><td>Phone*</td></tr>
            <br>
            <% 
             String getprod = (String)session.getAttribute("mProduct");
             rst=stmt.executeQuery("select * from buystock where approve='N' order by prodid desc");
             while( rst.next())
             {
                 out.println("<tr> <td><a href=confirmdistributorreq.jsp?prid="+rst.getString("prodid")+ ">"+rst.getString("prodid")+ " </a></td> <td> " + rst.getString("prodname")+ "</td> <td> " + rst.getString("dcost")+ "</td><td> " + rst.getString("quantity")+ "</td><td>"+rst.getString("did")+ " </td><td>"+rst.getString("dname")+ " </td><td>"+rst.getString("mail")+ " </td><td>"+rst.getString("phone")+ " </td></tr> " );
             }


            %>      

            </table>   
        </form>
            
    
    </center>
            <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>
