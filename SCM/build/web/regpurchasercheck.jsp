<%@include file="confile.jsp" %>

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

<%
String pwd = request.getParameter("purchaserpwd");
String name = request.getParameter("purchasername");
String email = request.getParameter("purchasermail");
String phone = request.getParameter("purchaserphone");
String address = request.getParameter("purchaseraddress");

stmt.executeUpdate("insert into purchaserdet values('" + purchaserid + "','" + pwd + "','" + name + "','" + address + "','" + email + "','" + phone + "','N')");
//session.setAttribute("mId",manufactureid);
//session.setAttribute("mName",name);
//session.setAttribute("mEmail",email);
//session.setAttribute("mPhone",phone);
//session.setAttribute("mAddress",address);
//session.setAttribute("mProduct",productselect);
response.sendRedirect("waitinglist.jsp");

%>