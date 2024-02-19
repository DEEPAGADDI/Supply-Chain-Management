<%-- 
    Document   : manufacturerprofile
    Created on : 21 Aug, 2022, 10:52:03 PM
    Author     : admin
--%>

<%@ include file="confile.jsp"%>
<%@ include file="headeradmin.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Manufacture Details</title>
        <style>
            section{
                position: relative;
                width: 100%;
                min-height: 50vh;
                display: flex;
                flex-direction: column;
                justify-content: flex-atart;
                background:  url('images/mi.jpg');
                background-size:contain;
                
            }
            .container {
	width: 50%;
        height:100%;
    margin: auto;
    padding: 100px 100px 70px;
    box-sizing: border-box;
    background-color: rgba(0, 0, 0, 0.5);
    
    
            }
            
        </style>
    </head>
    <body>
       
        <section>
            
    <center>
        
        <br><br>
        <form method="POST" action="allmanufacturedet.jsp">

            <table width="50%" cellpadding="5" cellspacing="5" align="center"> 
                <tr><td colspan="7"><center><h2>Manufacture Details</h2></center></td></tr>
            <tr style="color: tomato;"><td>Id*</td><td>Password*</td><td>Company Name*</td><td>Address*</td><td>Email*</td><td>Phone*</td><td>Product Type*</td></tr>
            <br>
            <% 

             rst=stmt.executeQuery("select * from manufacturedet");
             while( rst.next())
             {
                 out.println("<tr> <td>"+rst.getString("id")+"</td><td>"+rst.getString("password")+"</td> <td> " + "</td> <td> " + rst.getString("companyname")+ "</td><td> " + rst.getString("address")+ "</td><td>"+rst.getString("email")+ " </td><td>"+rst.getString("phone")+ " </td><td>"+rst.getString("producttype")+ " </td></tr> " );
             }


            %>      

            </table>   
        </form>
    </center>
           
        </section>
        </div>
            <br><br><br><br><br>
    </body>
</html>
<%@ include file="footer.jsp"%>