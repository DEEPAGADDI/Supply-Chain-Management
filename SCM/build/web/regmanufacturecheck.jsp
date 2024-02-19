<%@include file="confile.jsp" %>

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

<%
String pwd = request.getParameter("manufacturepwd");
String name = request.getParameter("companyname");
String email = request.getParameter("manufacturemail");
String phone = request.getParameter("manufacturephone");
String address = request.getParameter("manufactureaddress");
String productselect = request.getParameter("productselect");

stmt.executeUpdate("insert into manufacturedet values('" + manufactureid + "','" + pwd + "','" + name + "','" + address + "','" + email + "','" + phone + "','" + productselect + "','N')");

response.sendRedirect("waitinglist.jsp");

%>