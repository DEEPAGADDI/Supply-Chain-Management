<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="confile.jsp"%>
<%@ include file="headermanufacture.jsp"%>

<%
//    String message1 = request.getParameter("addmsg");
//    if(message1!=null){
//        out.println("<center>"+message1+"</center>");
//    }
%>

<% 
    String prodidinput = request.getParameter("getprodid");
    String getprod = (String)session.getAttribute("mProduct");
    System.out.println(prodidinput);
    rst=stmt.executeQuery("select * from addproductdet where prodid='"+prodidinput+"'");
    
        if(rst.next()){
           
            response.sendRedirect("manufactureaddstockdb2.jsp?getprodid="+prodidinput+" ");
        }
        else{
            response.sendRedirect("manufactureaddstock.jsp?msg=wrongid");
        }
    

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Manufacture Add Stock</title>
    </head>
    <body>
        <center>
        
            <br><br><br>
            
            <% 
                rst=stmt.executeQuery("select * from addproductdet where prodid='" + prodidinput + "'");
                if(rst.next()){
                    %>
                    <form action=manufactureaddstockdb1.jsp method=post>
                    <table width=30% >
                    <tr><td colspan=2><center><h2>Add Stock Details</h2></center></td></tr>
                    <tr><td>Product Id</td><td><input class=inputfield type=text name=addprodid value=<%= prodidinput %>></td></tr> 
                    <tr><td>Product Name</td><td><input class=inputfield type=text name=addprodname value=<%=rst.getString("prodname")%> ></td></tr> 
                    <tr><td>Manufacture Cost</td><td><input class=inputfield type=text name=addmcost value=<%=rst.getString("mcost")%> ></td></tr> 
                    <tr><td>Distribution Cost</td><td><input class=inputfield type=text name=adddcost value=<%=rst.getString("dcost")%> ></td></tr> 
                    <tr><td>Purchaser Cost</td><td><input class=inputfield type=text name=addscost value=<%=rst.getString("scost")%> ></td></tr> 
                    <tr><td>Existing Stock</td><td><input class=inputfield type=text name=addstock value=<%=rst.getString("quantity")%> ></td></tr> 
                    <tr><td>Enter Quantity</td><td><input class=inputfield type=text name=addqty ></td></tr> 

                    <tr><td colspan=2><center><input class=submit-btn type=submit value=Confirm></center></td></tr>

                    </table>
            
                    </form>
                    <%
                }
               
            %>
       </center>
       <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>