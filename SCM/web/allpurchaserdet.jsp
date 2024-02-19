<%-- 
    Document   : adminpage
    Created on : 11 Apr, 2022, 11:37:30 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%@ include file="headeradmin.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Purchaser Details </title>
    </head>
    <body>
        
    <center>
       
        <br><br>
        <form method="POST" action="allpurchaserdet.jsp">

            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="7"><center><h2>Purchaser Details</h2></center></td></tr>
            <tr style="color: tomato;"><td>Id*</td><td>Password*</td><td>Purchaser Name*</td><td>Address*</td><td>Email*</td><td>Phone*</td></tr>
            <br>
            <% 

             rst=stmt.executeQuery("select * from purchaserdet where status='N' order by id desc");
             while( rst.next())
             {
                 out.println("<tr> <td><a href=loginconfirmP.jsp?varpid="+rst.getString("id")+ ">"+rst.getString("id")+ " </a></td> <td> " + rst.getString("password")+ "</td> <td> " + rst.getString("purchasername")+ "</td><td> " + rst.getString("address")+ "</td><td>"+rst.getString("email")+ " </td><td>"+rst.getString("phone")+ " </td></tr> " );
             }


            %>      

            </table>   
        </form>
    </center>
    </body>
</html>
<%@ include file="footer.jsp"%>