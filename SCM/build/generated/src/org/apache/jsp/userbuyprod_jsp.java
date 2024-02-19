package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class userbuyprod_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/confile.jsp");
    _jspx_dependants.add("/headerpurchaser.jsp");
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

    String driver = "com.mysql.jdbc.Driver";
    Class.forName(driver).newInstance();
    Connection con = null;
    ResultSet rst =null;
    Statement stmt = null;
    
    try{
        String url = "jdbc:mysql://localhost/demo?user=root&password=root";
        con = DriverManager.getConnection(url);
        stmt = con.createStatement();
    }
    catch(Exception e){
        System.out.println(e.getMessage());
    }

      out.write('\n');
      out.write('\n');

    int scost = Integer.parseInt(request.getParameter("scost"));
    System.out.println(scost);
    session.setAttribute("sellcost",scost);

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Purchaser Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center>\n");
      out.write("                <h1>Product Distribution Agency</h1>\n");
      out.write("                <br><br><br>\n");
      out.write("               <a href=\"purchaserpage.jsp\">Home</a>&nbsp;&nbsp;&nbsp;<a href=\"userviewprod.jsp\">View Products</a>&nbsp;&nbsp;&nbsp;<a href=\"purchasedprods.jsp\">Purchased Products</a>&nbsp;&nbsp;&nbsp;<a href=\"purchaserlogin.jsp\">Logout</a>\n");
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
      out.write("        <title>Purchaser page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br><br>\n");
      out.write("        <center>\n");
      out.write("            <form action=userbuyprod1.jsp method=post name=\"buystock\">\n");
      out.write("            <table width=30% >\n");
      out.write("            <tr><td colspan=2><center><h2>Buy Stock</h2></center></td></tr>\n");
      out.write("            \n");
      out.write("            <tr><td>Product Id</td><td><input class=inputfield type=text name=\"userbuyprodid\" required></td></tr> \n");
      out.write("            <tr> <td height=\"40\"> Select Distributor </td> <td> \n");
      out.write("   \n");
      out.write("                ");
 
                rst=stmt.executeQuery("select distributername from distributerdet where status='A' order by id");
                out.println("<select class=inputfield name=userselect size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("distributername")+ " </option>");
                }
                out.println("</select>");
                rst.close();
                
      out.write("  \n");
      out.write("                </td> \n");
      out.write("            </tr>\n");
      out.write("            <tr><td>Quantity</td><td><input class=inputfield type=number name=\"userbuyprodqty\" required></td></tr> \n");
      out.write("\n");
      out.write("            <tr><td colspan=2><center><input class=submit-btn type=submit value=\"Buy\" onclick=\"onsubmit()\"></center></td></tr>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("        \n");
      out.write("        </center>\n");
      out.write("    <br><br><br><br>\n");
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
      out.write("   \n");
      out.write("        \n");
      out.write("</html>\n");
      out.write("\n");
      out.write('\n');
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
