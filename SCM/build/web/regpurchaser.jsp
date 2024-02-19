<%-- 
    Document   : adminlogin
    Created on : 11 Apr, 2022, 11:19:38 AM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<%
int purchaserid=1000;
rst=stmt.executeQuery("select (max(id) + 1) as pId from purchaserdet");
if (rst.next())
{
    if(rst.getString("pId")!=null)
    {
        purchaserid= Integer.parseInt(rst.getString("pId"));
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
        <title>Purchaser register Page</title>
    </head>
    <body>
    <center>
        
        <br><br>
        <form action="regpurchasercheck.jsp" method="post" name="regpurchaser">
            <table width="30%" >
                <tr><td colspan="2"><center> <h2>Purchaser Register Form </center></h2>   </td></tr>
                <tr><td>Purchaser Id</td><td><input class="inputfield" type="text" name="purchaserid" value="<%= purchaserid %>" disabled></td></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr><td>Purchaser Password</td><td><input class="inputfield" type="password" name="purchaserpwd" required></td></tr>
                <tr><td>Confirm Password</td><td><input class="inputfield" type="password" name="confirmpurchaserpwd" required></td></tr>
                <tr><td>Purchaser Name</td><td><input class="inputfield" type="text" name="purchasername" required></td></tr>
                <tr><td>Address</td><td><textarea class="inputfield" name="purchaseraddress" required></textarea></td></tr>
                <tr><td>Email</td><td><input class="inputfield" type="email" name="purchasermail" required></td></tr>
                <tr><td>Phone</td><td><input class="inputfield" pattern="[6-9]{1}[0-9]{9}" name="purchaserphone" required></td></tr>


                <tr><td colspan="2"><center><input class="submit-btn" type="submit" onclick="check()" value="Register"></center></td></tr>

            </table>
        </form>
       
    </center>
                <br><br><br><br><br>
                <script>
                    function check(){
    
                        pass = document.regpurchaser.purchaserpwd.value;
                        confirmpass = document.regpurchaser.confirmpurchaserpwd.value;
                        if(pass != confirmpass){
                            alert("Please enter password and confirm password correctly!");
                            document.regpurchaser.purchaserpwd.focus();
                            document.regpurchaser.purchaserpwd.value="";
                            document.regpurchaser.confirmpurchaserpwd.value="";
                            return false;
                        }
         
                        return true;
                  
                    }
                </script>
    </body>
</html>
<%@ include file="footer.jsp"%>