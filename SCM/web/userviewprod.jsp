<%-- 
    Document   : distributorpage
    Created on : 11 Apr, 2022, 2:38:18 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
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
            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
            <tr><td colspan="7"><center><h2>Product Details</h2></center></td></tr>
            <tr style="color: #1e247c;"><td>Id*</td><td>Product Name*</td><td>Product Cost*</td></tr>
            <br>
            <% 
//            String din = (String)session.getAttribute("din");
             rst=stmt.executeQuery("select * from addproductdet order by prodid desc");
             while( rst.next())
             {
                 session.setAttribute("userpid",rst.getString("prodid"));
                 session.setAttribute("userproname",rst.getString("prodname"));
                 session.setAttribute("usercost",rst.getString("scost"));
                 
//                 String getcost = rst.getString("scost");
//                 int numgetcost = Integer.parseInt(getcost);
//                 session.setAttribute("snumcost",numgetcost);
//                 
//                 session.setAttribute("proscost",rst.getString("scost"));
//                 
//                 String qty = rst.getString("quantity");
//                 int numqty = Integer.parseInt(qty);
//                 session.setAttribute("proqty",numqty);
                 
                 out.println("<tr> <td><a href=userbuyprod.jsp?scost="+rst.getString("scost")+">" + rst.getString("prodid")+ "</a></td> <td> " + rst.getString("prodname")+ "</td> <td> " + rst.getString("scost")+ "</td> </tr> " );
             }


            %>      

        </table>   
        
        </center>
            <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>
