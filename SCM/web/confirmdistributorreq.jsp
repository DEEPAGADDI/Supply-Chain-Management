<%@ include file="confile.jsp"%>

<%
String Tqty;
int totalqty;
String pId=(String)request.getParameter("prid");
rst=stmt.executeQuery("select * from addproductdet where prodid ='" + pId + "'");
if(rst.next())
       {
   Tqty = rst.getString("quantity");
   totalqty = Integer.parseInt(Tqty);
   session.setAttribute("totalqty", totalqty);
}
if(pId!=null && pId!=""){
    rst=stmt.executeQuery("select * from buystock where prodid ='" + pId + "' ");
    if(rst.next()){
        
        
        String buyqty = rst.getString("quantity");
        int noqty = Integer.parseInt(buyqty);
        int totalqty1 = (Integer)session.getAttribute("totalqty");
        System.out.println("BUY QTY="+buyqty + "TOTAL QTY="+totalqty1);
        int curramount = totalqty1-noqty;
        
        stmt.executeUpdate("update paybydistributor set confirmpayment='A' where prodid ='" + pId + "'");
        stmt.executeUpdate("update buystock set approve='A' where prodid ='" + pId + "'");
        stmt.executeUpdate("update addproductdet set quantity='"+curramount+"' where prodid='" + pId + "' ");
    }

response.sendRedirect("distributorreq.jsp");
}

%>

