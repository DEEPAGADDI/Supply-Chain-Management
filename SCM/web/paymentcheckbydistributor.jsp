<%@ include file="confile.jsp"%>

<%
    String pid=request.getParameter("paymentid");


    String getdate = (new java.util.Date()).toLocaleString();

    String mid = (String)session.getAttribute("mid");
    String prodid = (String)session.getAttribute("pid");
    String disid = (String)session.getAttribute("disid");
    
    String paytpe = request.getParameter("paytype");
    String carddet = request.getParameter("carddet");
    String cvvdet = request.getParameter("cvvdet");
    
    String dcost = (String)session.getAttribute("prodcost");
    int qty = (Integer)session.getAttribute("noqty");
     int dcost1=Integer.parseInt(dcost);
    int price = dcost1*qty;
   
    stmt.executeUpdate("insert into paybydistributor values('"+pid+"','"+prodid+"','"+disid+"','"+paytpe+"','"+carddet+"','"+cvvdet+"','"+getdate+"','"+price+"','N','"+mid+"' )");
    response.sendRedirect("confirmbuymessage.jsp");
    
%>