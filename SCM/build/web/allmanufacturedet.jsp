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
        <title>Manufacture Details</title>
        <style>
  
            section{
                position: relative;
                width: 100%;
                min-height: 100vh;
                display: flex;
                flex-direction: column;
                justify-content: flex-atart;
                background:  url('images/mi.jpg');
                background-size: cover;
                
            }
        </style>
    </head>
    <body>
        <section>
    <center>
        
        <br><br>
        <form method="POST" action="allmanufacturedet.jsp">

            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
                <tr><td colspan="7"><center><h2>Manufacture Details</h2></center></td></tr>
            <tr style="color: tomato;"><td>Id*</td><td>Password*</td><td>Company Name*</td><td>Address*</td><td>Email*</td><td>Phone*</td><td>Product Type*</td></tr>
            <br>
            <% 

             rst=stmt.executeQuery("select * from manufacturedet where status='N' order by id desc");
             while( rst.next())
             {
                 out.println("<tr> <td><a href=loginconfirmM.jsp?varmid="+rst.getString("id")+ ">"+rst.getString("id")+ " </a></td> <td> " + rst.getString("password")+ "</td> <td> " + rst.getString("companyname")+ "</td><td> " + rst.getString("address")+ "</td><td>"+rst.getString("email")+ " </td><td>"+rst.getString("phone")+ " </td><td>"+rst.getString("producttype")+ " </td></tr> " );
             }


            %>      

            </table>   
        </form>
    </center>
        </section>
            <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>