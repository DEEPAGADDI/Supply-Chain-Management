<%@include file="confile.jsp" %>

<%
int distributorid=1000;
rst=stmt.executeQuery("select (max(id) + 1) as dId from distributerdet");
if (rst.next())
{
    if(rst.getString("dId")!=null)
    {
        distributorid= Integer.parseInt(rst.getString("dId"));
    }
}

%>

<%
String pwd = request.getParameter("distributorpwd");
String name = request.getParameter("distributorname");
String email = request.getParameter("distributormail");
String phone = request.getParameter("distributorphone");
String address = request.getParameter("distributoraddress");
String distributorselect = request.getParameter("distributorselect");

stmt.executeUpdate("insert into distributerdet values('" + distributorid + "','" + pwd + "','" + name + "','" + address + "','" + email + "','" + phone + "','" + distributorselect + "','N')");
//session.setAttribute("mId",manufactureid);
//session.setAttribute("mName",name);
//session.setAttribute("mEmail",email);
//session.setAttribute("mPhone",phone);
//session.setAttribute("mAddress",address);
//session.setAttribute("mProduct",productselect);
response.sendRedirect("waitinglist.jsp");

%>