package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/confile.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

    String driver = "com.mysql.jdbc.Driver";
    Class.forName(driver).newInstance();
    Connection con = null;
    ResultSet rst =null;
    Statement stmt = null;
    
    try{
        String url = "jdbc:mysql://localhost/proddistributionagency?user=root&password=root";
        con = DriverManager.getConnection(url);
        stmt = con.createStatement();
    }
    catch(Exception e){
        System.out.println(e.getMessage());
    }

      out.write('\n');

String user=request.getParameter("adminname");
String pass=request.getParameter("adminpwd");
rst= stmt.executeQuery("select * from admindet where username= '" + user + "' and password='" + pass + "'");
if(user!=null)
{
    if(rst.next())
    {
        out.println("<center>Login Successful</center>");
       
        response.sendRedirect("adminpage.jsp");
    }
    else
    {
        out.println("<center><p>User Name or Password is not correct!</p></center>");
    }
}

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Header Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center>\n");
      out.write("                <h1><b>Supply Chain Of Products</b></h1>\n");
      out.write("                <br><br><br>\n");
      out.write("                <a href=\"index.jsp\">Home</a>&nbsp;&nbsp;&nbsp;<a href=\"adminlogin.jsp\">Admin Login</a>&nbsp;&nbsp;&nbsp;<a href=\"manufacturelogin.jsp\">Product Manufacturer Login</a>&nbsp;&nbsp;&nbsp;<a href=\"distributorlogin.jsp?m=qwer\">Distributer Login</a>&nbsp;&nbsp;&nbsp;<a href=\"purchaserlogin.jsp\">Purchaser Login</a>\n");
      out.write("            </center>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Adminlogin Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        <form action=\"\" method=\"post\">\n");
      out.write("            <table width=\"30%\">\n");
      out.write("                <tr><td colspan=\"2\"><center><h2>Admin Login</h2></center></td></tr>\n");
      out.write("                <tr><td>Username</td><td><input class=\"inputfield\" type=\"text\" name=\"adminname\" required></td></tr>\n");
      out.write("                <tr></tr><tr></tr><tr></tr><tr></tr>\n");
      out.write("                <tr><td>Password</td><td><input class=\"inputfield\" type=\"password\" name=\"adminpwd\" required></td></tr>\n");
      out.write("                <tr></tr><tr></tr><tr></tr><tr></tr>\n");
      out.write("                <tr><td colspan=\"2\"><center><input class=\"submit-btn\" type=\"submit\" value=\"Login\"></center></td></tr>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Footer Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer>\n");
      out.write("            <h4>PRODUCT DISTRIBUTION AGENCY</h4>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
