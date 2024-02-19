<%-- 
    Document   : distributorpage
    Created on : 11 Apr, 2022, 2:38:18 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%@ include file="headerdistributor.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Distributor page</title>
    </head>
    <body>
    <center>
        <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="7"><center><h2>Product Details</h2></center></td></tr>
            <tr style="color: #1e247c;"><td>Id*</td><td>Product Name*</td><td>Distribution Cost*</td><td>quantity*</td></tr>
            <br>
            <% 
            String din = (String)session.getAttribute("din");
             rst=stmt.executeQuery("select * from addproductdet where prodname='"+din+"' order by prodid desc");
             while( rst.next())
             {
                 session.setAttribute("mid",rst.getString("mid"));
                 session.setAttribute("pid",rst.getString("prodid"));
                 session.setAttribute("proname",rst.getString("prodname"));
                 session.setAttribute("promcost",rst.getString("mcost"));
                 
                 String cost = rst.getString("dcost");
                 int numcost = Integer.parseInt(cost);
                 session.setAttribute("prodcost",numcost);
                 
                 session.setAttribute("proscost",rst.getString("scost"));
                 
                 String qty = rst.getString("quantity");
                 int numqty = Integer.parseInt(qty);
                 session.setAttribute("proqty",numqty);
                 
                 out.println("<tr> <td>" + rst.getString("prodid")+ "</td> <td> " + rst.getString("prodname")+ "</td> <td> " + rst.getString("dcost")+ "</td><td> " + rst.getString("quantity")+ "</td></tr> " );
             }


            %>      

        </table>   
    </center>
    </body>
</html>
<%@ include file="footer.jsp"%>
