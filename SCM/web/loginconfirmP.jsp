<%@ include file="confile.jsp"%>

<%
String pId=(String)request.getParameter("varpid");

if(pId!=null&&pId!=""){
stmt.executeUpdate("update purchaserdet set status='A' where id ='" + pId + "'");

response.sendRedirect("allpurchaserdet.jsp");
}

%>

