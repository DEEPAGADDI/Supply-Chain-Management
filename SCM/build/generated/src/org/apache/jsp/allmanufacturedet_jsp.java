package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class allmanufacturedet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/confile.jsp");
    _jspx_dependants.add("/headeradmin.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Admin Header Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center>\n");
      out.write("                <h1>Product Distribution Agency</h1>\n");
      out.write("                <br><br><br>\n");
      out.write("               <a href=\"adminpage.jsp\">Home</a>&nbsp;&nbsp;&nbsp;<a href=\"allmanufacturedet.jsp\">Manufacturer</a>&nbsp;&nbsp;&nbsp;<a href=\"alldistributiondet.jsp\">Distributer</a>&nbsp;&nbsp;&nbsp;<a href=\"allpurchaserdet.jsp\">Purchaser</a>&nbsp;&nbsp;&nbsp;<a href=\"addproduct.jsp\">Add Product</a>&nbsp;&nbsp;&nbsp;<a href=\"adminlogin.jsp\">Logout</a>\n");
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
      out.write("        <title>Manufacture Details</title>\n");
      out.write("        <style>\n");
      out.write("  \n");
      out.write("            section{\n");
      out.write("                position: relative;\n");
      out.write("                width: 100%;\n");
      out.write("                min-height: 100vh;\n");
      out.write("                display: flex;\n");
      out.write("                flex-direction: column;\n");
      out.write("                justify-content: flex-atart;\n");
      out.write("                background:  url('images/mi.jpg');\n");
      out.write("                background-size: cover;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        <form method=\"POST\" action=\"allmanufacturedet.jsp\">\n");
      out.write("\n");
      out.write("            <table width=\"50%\" cellpadding=\"5\" cellspacing=\"5\" align=\"center\"> \n");
      out.write("                <tr><td colspan=\"7\"><center><h2>Manufacture Details</h2></center></td></tr>\n");
      out.write("            <tr style=\"color: tomato;\"><td>Id*</td><td>Password*</td><td>Company Name*</td><td>Address*</td><td>Email*</td><td>Phone*</td><td>Product Type*</td></tr>\n");
      out.write("            <br>\n");
      out.write("            ");
 

             rst=stmt.executeQuery("select * from manufacturedet where status='N' order by id desc");
             while( rst.next())
             {
                 out.println("<tr> <td><a href=loginconfirmM.jsp?varmid="+rst.getString("id")+ ">"+rst.getString("id")+ " </a></td> <td> " + rst.getString("password")+ "</td> <td> " + rst.getString("companyname")+ "</td><td> " + rst.getString("address")+ "</td><td>"+rst.getString("email")+ " </td><td>"+rst.getString("phone")+ " </td><td>"+rst.getString("producttype")+ " </td></tr> " );
             }


            
      out.write("      \n");
      out.write("\n");
      out.write("            </table>   \n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("        </section>\n");
      out.write("            <br><br><br><br><br>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <title>Footer Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("        <footer>\n");
      out.write("            \n");
      out.write("            <h4 style=\"font-size: 32px;font-family:times new roman;background-color:#e2e7ff;background-size: cover;\">SUPPLY CHAIN MANAGEMENT</h4>\n");
      out.write("       \n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
