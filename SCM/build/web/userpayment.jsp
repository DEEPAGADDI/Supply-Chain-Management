<%-- 
    Document   : distributorpage
    Created on : 11 Apr, 2022, 2:38:18 PM
    Author     : User
--%>
<%@page import="javassist.compiler.ast.Stmnt"%>
<%@ include file="confile.jsp"%>
<%
    int payid=5000;
    rst=stmt.executeQuery("select (max(paymentid) + 1) as payNo from userpaymentdet");
    if (rst.next())
    {
    if(rst.getString("payNo")!=null){
    payid= Integer
            .parseInt(rst.getString("payNo"));}
    }

%>


<%
    int amount = (Integer)session.getAttribute("totamnt");
%>



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
            
           
            <form action=userpaymentcheck.jsp method=post name="userpaymentform">
            <table width=30% >
            <tr><td colspan=2><center><h2>Make Payment</h2></center></td></tr>
            <tr><td>Payment Id</td><td><input class=inputfield type=text name="paymentid" value="<%= payid %>" disabled></td></tr> 

            <tr><td>Payment Type</td><td><select class=inputfield name="paytype" id="myselect">
                                    <option disabled selected>Payment type</option>
                                    <option value="debit">Debit Card</option>
                                    <option value="credit ">Credit Card</option>
                                    <option value="upi">UPI</option>
                                </select></td></tr> 
            
            <tr><td>Card Details</td><td><input class=inputfield type=text name="carddet" required></td></tr> 
            <tr><td>Enter Cvv</td><td><input class=inputfield type=text name="cvvdet" required></td></tr> 
            <tr><td>Amount</td><td><input class=inputfield type=text name="amountpay" value="<%= amount %>" disabled></td></tr> 

            <tr><td colspan=2><center><input class=submit-btn type=submit value=Confirm onclick="onsubmit()"></center></td></tr>

            </table>

            </form>
        
        </center>
            <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>
