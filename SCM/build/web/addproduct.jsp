<%-- 
    Document   : adminpage
    Created on : 11 Apr, 2022, 11:37:30 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
        String id=request.getParameter("prodid");
        String name=request.getParameter("prodname");
         rst=stmt.executeQuery("select * from producttype where id='"+id+"' ");
         if(rst.next()){
             out.println("<center>Product Id alredy exist Please check details & update again</center>");
             
         }


         else if(id!=null&&name!=""){
        stmt.executeUpdate("insert into producttype value('" + id + "','" + name + "')");
        out.println("<center>Submit Successful</center>");
        //  response.sendRedirect("custmainpage.jsp");
        }

%>

<%@ include file="headeradmin.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Add Poduct Page</title>
    </head>
    <body>
        <style>
            
        </style>
    <center>
        
        <br><br>
        <form action="" method="post">
            <table width="30%" >
                <tr><td colspan="2"><center><h2>Add Product Type</h2></center></td></tr>
                <tr><td>Enter Product Id</td><td><input class="inputfield" type="text" name="prodid" required></td></tr>
                <tr><td>Enter Product Name</td><td><input class="inputfield" type="text" name="prodname" required></td></tr>
                <tr><td colspan="2"><center><input class="submit-btn" type="submit" value="Add Product"></center></td></tr>

            </table>
        </form>
    </center>
    <br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>
