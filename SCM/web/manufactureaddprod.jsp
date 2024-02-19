<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
        String mid = (String)session.getAttribute("mId");
        String id=request.getParameter("prodid");
        String name=request.getParameter("prodname");
        String mcost=request.getParameter("mcost");
        String dcost=request.getParameter("dcost");
        String scost=request.getParameter("scost");
        
        String product= (String)session.getAttribute("mProduct");
         rst=stmt.executeQuery("select * from addproductdet where prodid='"+id+"' ");
         if(rst.next()){
             
             out.println("<center>Product Id alredy exist Please check details & update again</center>");
         }


         else if(id!=null&&name!=""){
        stmt.executeUpdate("insert into addproductdet values('" + id + "','" + name + "','" + mcost + "','" + dcost + "','" + scost + "','0','"+mid+"')");
        out.println("<center>Product Submission Successful</center>");
        //  response.sendRedirect("custmainpage.jsp");
        }

%>

<%@ include file="headermanufacture.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Manufacture Add Product</title>
    </head>
    
    <body>
        <center>
        
            <br><br><br>
            <form action="" method="post">
                <table width="30%">
                   <tr><td colspan="2"><center><h2>Add Product Details</h2></center></td></tr>
                   <tr><td>Product Id</td><td><input class="inputfield" type="text" name="prodid" required></td></tr>
                   <tr><td>Product Name</td><td><input class="inputfield" type="text" name="prodname" value="<%=product%>"></td></tr>
                   <tr><td>Manufacturing Cost</td><td><input class="inputfield" type="text" name="mcost" required></td></tr>
                   <tr><td>Distributor Cost</td><td><input class="inputfield" type="text" name="dcost" required></td></tr>
                   <tr><td>Selling Cost</td><td><input class="inputfield" type="text" name="scost" required></td></tr>
<!--                   <tr><td>Product Image</td><td><input class="inputfield" type="file" name="prodimg" required></td></tr>-->

                   <tr><td colspan="2"><center><input class="submit-btn" type="submit" value="Submit Details"></center></td></tr>

                </table>
            </form>
       </center>
       <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>