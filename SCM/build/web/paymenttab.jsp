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
        <title>All Payments</title>
    </head>
    <body>
    <center>
        
        <br><br>
        
            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="8"><center><h2>Payment Details</h2></center></td></tr>
            <tr style="color: #1e247c;"><td>Payment Id*</td><td>Product Id*</td><td>Distribution Id*</td><td>Payment Type*</td><td>Card Details*</td><td>Cvv Details*</td><td>Payment Date*</td><td>Amount Paid*</td></tr>
            <br>
            <% 
             String mid = (String)session.getAttribute("mId");
             rst=stmt.executeQuery("select * from paybydistributor where confirmpayment='A' and mid='"+mid+"' order by payid desc");
             while( rst.next())
             {
                 out.println("<tr> <td>" + rst.getString("payid")+ "</td> <td> " + rst.getString("prodid")+ "</td> <td> " + rst.getString("did")+ "</td><td> " + rst.getString("paytype")+ "</td><td>"+rst.getString("carddet")+ " </td><td>"+rst.getString("cvvdet")+ " </td><td>"+rst.getString("paydate")+ " </td><td>"+rst.getString("price")+ " </td></tr> " );
             }


            %>      

            </table>   
    </center>
            <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>
