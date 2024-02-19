<%-- 
    Document   : distributorpage
    Created on : 11 Apr, 2022, 2:38:18 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>

<%
    int scost = Integer.parseInt(request.getParameter("scost"));
    System.out.println(scost);
    session.setAttribute("sellcost",scost);
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
        <br><br>
        <center>
            <form action=userbuyprod1.jsp method=post name="buystock">
            <table width=30% >
            <tr><td colspan=2><center><h2>Buy Stock</h2></center></td></tr>
            
            <tr><td>Product Id</td><td><input class=inputfield type=text name="userbuyprodid" required></td></tr> 
            <tr> <td height="40"> Select Distributor </td> <td> 
   
                <% 
                rst=stmt.executeQuery("select distributername from distributerdet where status='A' order by id");
                out.println("<select class=inputfield name=userselect size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("distributername")+ " </option>");
                }
                out.println("</select>");
                rst.close();
                %>  
                </td> 
            </tr>
            <tr><td>Quantity</td><td><input class=inputfield type=number name="userbuyprodqty" required></td></tr> 

            <tr><td colspan=2><center><input class=submit-btn type=submit value="Buy" onclick="onsubmit()"></center></td></tr>

            </table>

            </form>
        
        </center>
    <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>
