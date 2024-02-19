<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>

<% 
    String message = request.getParameter("msg");
    if(message!=null){
        out.println("<center>"+message+"</center>");
    }
%>

<%@ include file="headermanufacture.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Manufacture Add Stock</title>
    </head>
    <body>
        <center>
        
            <br><br><br>
            <form action="manufactureaddstockdb.jsp" method="post">
                <table width="30%">
                   <tr><td colspan="2"><center><h2>Add Stock Details</h2></center></td></tr>
                   <tr><td>Enter Product Id</td><td><input class="inputfield" type="text" name="getprodid" required></td></tr>

                   <tr><td colspan="2"><center><input class="submit-btn" type="submit" value="Confirm"></center></td></tr>

                </table>
            </form>
            
       </center>
       <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>