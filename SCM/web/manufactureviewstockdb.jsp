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
        <title>Stock Details </title>
    </head>
    <body>
    <center>
        
        <br><br>
        

            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="7"><center><h2>Stock Details</h2></center></td></tr>
            <tr style="color: tomato;"><td>Id*</td><td>Name*</td><td>Manufacture Cost*</td><td>Distribution Cost*</td><td>Selling Cost*</td><td>Quantity*</td></tr>
            <br>
            <% 
             String prodidinput = request.getParameter("enterprodid");
             rst=stmt.executeQuery("select * from addproductdet where prodid= '"+prodidinput+"' order by prodid desc");
             while( rst.next())
             {
                 String qty = rst.getString("quantity");
                 int numqty = Integer.parseInt(qty);
                 System.out.println(numqty);
                 session.setAttribute("getquantity", numqty);
                 out.println("<tr> <td> " +rst.getString("prodid")+ " </td> <td> " + rst.getString("prodname")+ "</td> <td> " + rst.getString("mcost")+ "</td><td> " + rst.getString("dcost")+ "</td><td>"+rst.getString("scost")+ " </td><td>"+rst.getString("quantity")+ " </td></tr> " );
             }


            %>      

            </table>   
    
    </center>
    </body>
</html>
<%@ include file="footer.jsp"%>
