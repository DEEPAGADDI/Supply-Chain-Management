<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerdistributor.jsp"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Buy Stock</title>
    </head>
    <body>
        
        <center>
        
            <br><br><br>
            
           
            <form action=buystock.jsp method=post name="buystock">
            <table width=30% >
            <tr><td colspan=2><center><h2>Buy Stock</h2></center></td></tr>
            <tr><td>Product Id</td><td><input class=inputfield type=text name="buyprodid" required></td></tr> 

            <tr><td>Enter Quantity</td><td><input class=inputfield type=text name="buyqty" required></td></tr> 

            <tr><td colspan=2><center><input class=submit-btn type=submit value=Confirm onclick="onsubmit()"></center></td></tr>

            </table>

            </form>
                   
       </center>
       <br><br><br><br><br>
    
    </body>
</html>
<%@ include file="footer.jsp"%>