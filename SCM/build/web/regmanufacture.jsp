<%-- 
    Document   : adminlogin
    Created on : 11 Apr, 2022, 11:19:38 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
int manufactureid=1000;
rst=stmt.executeQuery("select (max(id) + 1) as mId from manufacturedet");
if (rst.next())
{
    if(rst.getString("mId")!=null)
    {
        manufactureid= Integer.parseInt(rst.getString("mId"));
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
        <title>Manufactureregister Page</title>
    </head>
    <body>
    <center>
        
        <br><br>
        <form action="regmanufacturecheck.jsp" method="post" name="regmanufacture">
            <table width="30%" >
                <tr><td colspan="2"><center> <h2>Manufacture Register Form </center></h2>   </td></tr>
                <tr><td>Manufacture Id</td><td><input class="inputfield" type="text" name="manufactureid" value="<%= manufactureid %>" disabled></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td>Manufacture Password</td><td><input class="inputfield" type="password" name="manufacturepwd" required></td></tr>
                <tr><td>Confirm Password</td><td><input class="inputfield" type="password" name="confirmmanufacturepwd" required></td></tr>
                <tr><td>Company Name</td><td><input class="inputfield" type="text" name="companyname" required></td></tr>
                <tr><td>Address</td><td><textarea class="inputfield" name="manufactureaddress" required></textarea></td></tr>
                <tr><td>Email</td><td><input class="inputfield" type="email" name="manufacturemail" required></td></tr>
                <tr><td>Phone</td><td><input class="inputfield" pattern="[6-9]{1}[0-9]{9}" name="manufacturephone" required></td></tr>
                <%
            
                rst = stmt.executeQuery("select * from producttype ");
                out.println("<tr>");
                out.println(" <td>Product Type</td>");
                out.println("<td><select class=inputfield name=productselect>");
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
    
                        pass = document.regmanufacture.manufacturepwd.value;
                        confirmpass = document.regmanufacture.confirmmanufacturepwd.value;
                        if(pass != confirmpass){
                            alert("Please enter password and confirm password correctly!");
                            document.regmanufacture.manufacturepwd.focus();
                            document.regmanufacture.manufacturepwd.value="";
                            document.regmanufacture.confirmmanufacturepwd.value="";
                            return false;
                        }
         
                        return true;
                  
                    }
                </script>
    </body>
</html>
<%@ include file="footer.jsp"%>
