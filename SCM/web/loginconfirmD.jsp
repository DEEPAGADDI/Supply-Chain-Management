<%@ include file="confile.jsp"%>

<%
String dId=(String)request.getParameter("vardid");

if(dId!=null&&dId!=""){
stmt.executeUpdate("update distributerdet set status='A' where id ='" + dId + "'");

response.sendRedirect("alldistributiondet.jsp");
}

%>

