<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
String prodidinput = request.getParameter("addprodid");
String addstock = request.getParameter("addstock");
String addqty = request.getParameter("addqty");
Integer addqty1 = Integer.parseInt(addqty);
Integer addstock1 = Integer.parseInt(addstock);
Integer sum = addqty1+addstock1;
if(addqty!=null){
    stmt.executeUpdate("update addproductdet set quantity='"+sum+"' where prodid= '"+prodidinput+"' ");
//    out.println("<center> Stock Added Successfully </center>");
}

%>

<%@ include file="headermanufacture.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Product Registered</title>
    </head>
    <body>
    <center>
        
        <br><br>
        <h2>Product Stock Added Successfully.</h2>
    </center>
    </body>
</html>
<%@ include file="footer.jsp"%>
