<%-- 
    Document   : distributorpage
    Created on : 11 Apr, 2022, 2:38:18 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%@ include file="headerpurchaser.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Purchaser page</title>
    </head>
    <body>
        <center>
            <br><br>
        
            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="8"><center><h2>Payment Details</h2></center></td></tr>
            <tr style="color: #1e247c;"><td>Payment Id*</td><td>Product Id*</td><td>Purchaser Id*</td><td>Payment Type*</td><td>Card Details*</td><td>Cvv Details*</td><td>Payment Date*</td><td>Amount Paid*</td></tr>
            
            <% 
                String purchaserid = (String)session.getAttribute("pid");
                rst=stmt.executeQuery("select * from userpaymentdet where purchaserid='"+purchaserid+"' order by paymentid desc");
                while( rst.next())
                {
                    out.println("<tr> <td>" + rst.getString("paymentid")+ "</td> <td> " + rst.getString("prodid")+ "</td> <td> " + rst.getString("purchaserid")+ "</td><td> " + rst.getString("paymenttype")+ "</td><td>"+rst.getString("carddet")+ " </td><td>"+rst.getString("cvv")+ " </td><td>"+rst.getString("paymentdate")+ " </td><td>"+rst.getString("amount")+ " </td></tr> " );
                }


            %> 
            
            </table>
        </center>
            <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>
