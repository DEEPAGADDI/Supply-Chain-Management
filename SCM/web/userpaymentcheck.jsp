<%-- 
    Document   : userpaymentcheck
    Created on : 6 May, 2022, 3:46:54 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>

<%
    int payid=5000;
    rst=stmt.executeQuery("select (max(paymentid) + 1) as payNo from userpaymentdet");
    if (rst.next())
    {
    if(rst.getString("payNo")!=null){
    payid= Integer.parseInt(rst.getString("payNo"));}
    }

%>


<%

    int amount = (Integer)session.getAttribute("totamnt");
%>

<%
    String getdate = (new java.util.Date()).toLocaleString();
%>

<%
    String purchaserid = (String)session.getAttribute("pid");
    String productid = (String)session.getAttribute("setpid");
    String paytype = request.getParameter("paytype");
    String carddet = request.getParameter("carddet");
    String cvvdet = request.getParameter("cvvdet");
    int totalqty = (Integer)session.getAttribute("totqty");
    
    stmt.executeUpdate("insert into userpaymentdet values('"+purchaserid+"','"+productid+"','"+amount+"','"+paytype+"','"+carddet+"','"+cvvdet+"','"+payid+"','"+getdate+"')");
    stmt.executeUpdate("update userpurchaseddet set status='A' where prodid ='" + productid + "'");
    stmt.executeUpdate("update buystock set quantity='"+totalqty+"' where prodid ='" + productid + "'");
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
            <h2>Payment Successful</h2>
         </center>
    </body>
</html>
<%@ include file="footer.jsp"%>