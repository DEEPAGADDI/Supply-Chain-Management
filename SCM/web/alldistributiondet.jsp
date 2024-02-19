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
        <title>Distribution Details </title>
    </head>
    <body>
        <style>
            
        </style>
    <center>
        
        <br><br>
        <form method="POST" action="allpurchaserdet.jsp">

            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="7"><center><h2>Distributor Details</h2></center></td></tr>
            <tr style="color: tomato;"><td>Id*</td><td>Password*</td><td>Distributor Name*</td><td>Address*</td><td>Email*</td><td>Phone*</td><td>Distribution In*</td></tr>
            <br>
            <% 

             rst=stmt.executeQuery("select * from distributerdet where status='N' order by id desc");
             while( rst.next())
             {
                 out.println("<tr> <td><a href=loginconfirmD.jsp?vardid="+rst.getString("id")+ ">"+rst.getString("id")+ " </a></td> <td> " + rst.getString("password")+ "</td> <td> " + rst.getString("distributername")+ "</td><td> " + rst.getString("address")+ "</td><td>"+rst.getString("mail")+ " </td><td>"+rst.getString("phone")+ " </td><td>"+rst.getString("distributionin")+ " </td></tr> " );
             }


            %>      

            </table>   
        </form>
    </center>
    </body>
</html>
<%@ include file="footer.jsp"%>
