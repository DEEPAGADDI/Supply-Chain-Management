<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%@page import="java.util.Random"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerdistributor.jsp"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Distributor Payment</title>
    </head>
    <body>
        <%
        
    
    Random rand = new Random();
    
    String pid =String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)
            +String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)));

        String dcost=(String)session.getAttribute("prodcost");
        int qty=(Integer)session.getAttribute("noqty");
        int dcost1=Integer.parseInt(dcost);
        int total = qty*dcost1;
        String Total1=String.valueOf(total);
        //int price=(Integer.parseInt(dcost)*Integer.parseInt(qty));
        %>
        <center>
        
            <br><br><br>
            
           
            <form action=paymentcheckbydistributor.jsp method=post name="paymentform">
            <table width=30% >
            <tr><td colspan=2><center><h2>Make Payment</h2></center></td></tr>
            <tr><td>Payment Id</td><td><input class=inputfield type=text name="paymentid" value="<%=pid%>" disabled></td></tr> 

            <tr><td>Payment Type</td><td><select class=inputfield name="paytype" id="myselect">
                                    <option disabled selected>Payment type</option>
                                    <option value="debit">Debit Card</option>
                                    <option value="credit ">Credit Card</option>
                                    
                                </select></td></tr> 
            
            <tr><td>Card Details</td><td><input class=inputfield type=text name="carddet" required></td></tr> 
            <tr><td>Enter Cvv</td><td><input class=inputfield type=text name="cvvdet" required></td></tr> 
            <tr><td>Amount</td><td><input class=inputfield type=text name="amountpay" value="<%=Total1%>" disabled></td></tr> 

            <tr><td colspan=2><center><input class=submit-btn type=submit value=Confirm onclick="onsubmit()"></center></td></tr>

            </table>

            </form>
                   
       </center>
       <br><br><br><br><br>
    
    </body>
</html>
<%@ include file="footer.jsp"%>