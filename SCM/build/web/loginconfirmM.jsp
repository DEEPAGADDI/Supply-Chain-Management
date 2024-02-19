<%@ include file="confile.jsp"%>

<%
String mId=(String)request.getParameter("varmid");

if(mId!=null&&mId!=""){
stmt.executeUpdate("update manufacturedet set status='A' where id ='" + mId + "'");

response.sendRedirect("allmanufacturedet.jsp");
}

%>

