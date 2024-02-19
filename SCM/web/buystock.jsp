<%-- 
    Document   : manufactureaddprod
    Created on : 13 Apr, 2022, 3:41:25 PM
    Author     : User
--%>
<%@ include file="confile.jsp"%>
<% 
    
    
    String did = (String)session.getAttribute("disid");
    
    String buyqty = request.getParameter("buyqty");
    String buyprod = request.getParameter("buyprodid");

   

    rst=stmt.executeQuery("select * from addproductdet where prodid='"+buyprod+"'");
    
    
        if(rst.next()){
            int totalqty=Integer.parseInt(rst.getString("quantity"));
            int qtynum = Integer.parseInt(buyqty);
            session.setAttribute("noqty", qtynum);
            String name=rst.getString("prodname");
            String dcost=rst.getString("dcost");
            session.setAttribute("prodcost",dcost);
            String dname=(String)session.getAttribute("disname");
            String demail=(String)session.getAttribute("disemail");
            String dphone=(String)session.getAttribute("disphone");
            if(totalqty>=qtynum){
                session.setAttribute("noqty",qtynum);
                stmt.executeUpdate("insert into buystock values('"+buyprod+"','"+name+"','"+dcost+"','"+buyqty+"','"+did+"','"+dname+"','"+demail+"','"+dphone+"','N' )");
                response.sendRedirect("paymentbydistributor.jsp");
            }
            else{
                %><script>
                        alert("Stock Not Available");   
                </script><%
            }
        }
        else{
            %><script>
                alert("Wrong Product Id");
            </script><%
        }
    
    
    
%>


