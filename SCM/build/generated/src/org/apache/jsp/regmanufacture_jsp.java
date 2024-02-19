package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.ws.rs.OPTIONS;
import java.sql.*;

public final class regmanufacture_jsp extends org.apache.jasper.runtime.HttpJspBase
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
        String url = "jdbc:mysql://localhost/demo?user=root&password=root";
        con = DriverManager.getConnection(url);
        stmt = con.createStatement();
    }
    catch(Exception e){
        System.out.println(e.getMessage());
    }

      out.write('\n');

int manufactureid=1000;
rst=stmt.executeQuery("select (max(id) + 1) as mId from manufacturedet");
if (rst.next())
{
    if(rst.getString("mId")!=null)
    {
        manufactureid= Integer.parseInt(rst.getString("mId"));
    }
}


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
      out.write("        <title>Header Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center>\n");
      out.write("                <h1><b>SUPPLY CHAIN MANAGEMENT</b></h1>\n");
      out.write("                <br><br><br>\n");
      out.write("                <a href=\"index.jsp\">Home</a>&nbsp;&nbsp;&nbsp;<a href=\"adminlogin.jsp\">Admin Login</a>&nbsp;&nbsp;&nbsp;<a href=\"manufacturelogin.jsp\">Product Manufacturer Login</a>&nbsp;&nbsp;&nbsp;<a href=\"distributorlogin.jsp?m=qwer\">Distributer Login</a>&nbsp;&nbsp;&nbsp;<a href=\"purchaserlogin.jsp\">Purchaser Login</a>\n");
      out.write("            </center>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Manufactureregister Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        <form action=\"regmanufacturecheck.jsp\" method=\"post\" name=\"regmanufacture\">\n");
      out.write("            <table width=\"30%\" >\n");
      out.write("                <tr><td colspan=\"2\"><center> <h2>Manufacture Register Form </center></h2>   </td></tr>\n");
      out.write("                <tr><td>Manufacture Id</td><td><input class=\"inputfield\" type=\"text\" name=\"manufactureid\" value=\"");
      out.print( manufactureid );
      out.write("\" disabled></td></tr>\n");
      out.write("                <tr></tr><tr></tr><tr></tr><tr></tr>\n");
      out.write("                <tr><td>Manufacture Password</td><td><input class=\"inputfield\" type=\"password\" name=\"manufacturepwd\" required></td></tr>\n");
      out.write("                <tr><td>Confirm Password</td><td><input class=\"inputfield\" type=\"password\" name=\"confirmmanufacturepwd\" required></td></tr>\n");
      out.write("                <tr><td>Company Name</td><td><input class=\"inputfield\" type=\"text\" name=\"companyname\" required></td></tr>\n");
      out.write("                <tr><td>Address</td><td><textarea class=\"inputfield\" name=\"manufactureaddress\" required></textarea></td></tr>\n");
      out.write("                <tr><td>Email</td><td><input class=\"inputfield\" type=\"email\" name=\"manufacturemail\" required></td></tr>\n");
      out.write("                <tr><td>Phone</td><td><input class=\"inputfield\" pattern=\"[6-9]{1}[0-9]{9}\" name=\"manufacturephone\" required></td></tr>\n");
      out.write("                ");

            
                rst = stmt.executeQuery("select * from producttype ");
                out.println("<tr>");
                out.println(" <td>Product Type</td>");
                out.println("<td><select class=inputfield name=productselect>");
                while( rst.next())
                {
                    out.println("<option>" + rst.getString("name")+ " </option>");
                   
                }
                
                out.println("</select></td>");
                out.println("</tr>");
                
                
      out.write("\n");
      out.write("             \n");
      out.write("                <tr><td colspan=\"2\"><center><input class=\"submit-btn\" type=\"submit\" onclick=\"check()\" value=\"Register\"></center></td></tr>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("       \n");
      out.write("    </center>\n");
      out.write("                <br><br><br><br><br>\n");
      out.write("                <script>\n");
      out.write("                    function check(){\n");
      out.write("    \n");
      out.write("                        pass = document.regmanufacture.manufacturepwd.value;\n");
      out.write("                        confirmpass = document.regmanufacture.confirmmanufacturepwd.value;\n");
      out.write("                        if(pass != confirmpass){\n");
      out.write("                            alert(\"Please enter password and confirm password correctly!\");\n");
      out.write("                            document.regmanufacture.manufacturepwd.focus();\n");
      out.write("                            document.regmanufacture.manufacturepwd.value=\"\";\n");
      out.write("                            document.regmanufacture.confirmmanufacturepwd.value=\"\";\n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("         \n");
      out.write("                        return true;\n");
      out.write("                  \n");
      out.write("                    }\n");
      out.write("                </script>\n");
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
