<%-- 
    Document   : adminlogin
    Created on : 11 Apr, 2022, 11:19:38 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
int distributorid=1000;
rst=stmt.executeQuery("select (max(id) + 1) as dId from distributerdet");
if (rst.next())
{
    if(rst.getString("dId")!=null)
    {
        distributorid= Integer.parseInt(rst.getString("dId"));
    }
}

%>

<%@ include file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Distributor register Page</title>
    </head>
    <body>
    <center>
        
        <br><br>
        <form action="regdistributorcheck.jsp" method="post" name="regdistributor">
            <table width="30%" >
                <tr><td colspan="2"><center> <h2>Distributor Register Form </center></h2>   </td></tr>
                <tr><td>Distributor Id</td><td><input class="inputfield" type="text" name="distributorid" value="<%= distributorid %>" disabled></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td>Distributor Password</td><td><input class="inputfield" type="password" name="distributorpwd" required></td></tr>
                <tr><td>Confirm Password</td><td><input class="inputfield" type="password" name="confirmdistributorpwd" required></td></tr>
                <tr><td>Distributor Name</td><td><input class="inputfield" type="text" name="distributorname" required></td></tr>
                <tr><td>Address</td><td><textarea class="inputfield" name="distributoraddress" required></textarea></td></tr>
                <tr><td>Email</td><td><input class="inputfield" type="email" name="distributormail" required></td></tr>
                <tr><td>Phone</td><td><input class="inputfield" pattern="[6-9]{1}[0-9]{9}" name="distributorphone" required></td></tr>
                <%
            
                rst = stmt.executeQuery("select * from producttype ");
                out.println("<tr>");
                out.println(" <td>Distributor In</td>");
                out.println("<td><select class=inputfield name=distributorselect>");
                while( rst.next())
                {
                    out.println("<option>" + rst.getString("name")+ " </option>");
                }
                out.println("</select></td>");
                out.println("</tr>");
                
                %>


                <tr><td colspan="2"><center><input class="submit-btn" type="submit" onclick="check()" value="Register"></center></td></tr>

            </table>
        </form>
       
    </center>
                <br><br><br><br><br>
                <script>
                    function check(){
    
                        pass = document.regdistributor.distributorpwd.value;
                        confirmpass = document.regdistributor.confirmdistributorpwd.value;
                        if(pass != confirmpass){
                            alert("Please enter password and confirm password correctly!");
                            document.regdistributor.distributorpwd.focus();
                            document.regdistributor.distributorpwd.value="";
                            document.regdistributor.confirmdistributorpwd.value="";
                            return false;
                        }
         
                        return true;
                  
                    }
                </script>
    </body>
</html>
<%@ include file="footer.jsp"%>
