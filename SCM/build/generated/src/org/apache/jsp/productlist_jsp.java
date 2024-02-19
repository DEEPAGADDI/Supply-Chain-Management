package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class productlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/confile.jsp");
    _jspx_dependants.add("/headerdistributor.jsp");
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
      out.write("        <title>Distributor Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center>\n");
      out.write("                <h1 style=\"color:black;font-family: times new roman;\">Product Distribution Agency</h1>\n");
      out.write("                <br><br><br>\n");
      out.write("               <a href=\"distributorpage.jsp\">Home</a>&nbsp;&nbsp;&nbsp;<a href=\"productlist.jsp\">View Product</a>&nbsp;&nbsp;&nbsp;<a href=\"buystock1.jsp\">Buy Stock</a>&nbsp;&nbsp;&nbsp;<a href=\"viewstock.jsp\">Approved Request</a>&nbsp;&nbsp;&nbsp;<a href=\"paymenttabdistributor.jsp\">Payments</a>&nbsp;&nbsp;&nbsp;<a href=\"distributorlogin.jsp\">Logout</a>\n");
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
      out.write("        <title>Distributor page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <table width=\"50%\" cellpadding=\"5\" cellspacing=\"5\" align=\"center\"> \n");
      out.write("            <tr><td colspan=\"7\"><center><h2>Product Details</h2></center></td></tr>\n");
      out.write("            <tr style=\"color: #1e247c;\"><td>Id*</td><td>Product Name*</td><td>Distribution Cost*</td><td>quantity*</td></tr>\n");
      out.write("            <br>\n");
      out.write("            ");
 
            String din = (String)session.getAttribute("din");
             rst=stmt.executeQuery("select * from addproductdet where prodname='"+din+"' order by prodid desc");
             while( rst.next())
             {
                 session.setAttribute("mid",rst.getString("mid"));
                 session.setAttribute("pid",rst.getString("prodid"));
                 session.setAttribute("proname",rst.getString("prodname"));
                 session.setAttribute("promcost",rst.getString("mcost"));
                 
                 String cost = rst.getString("dcost");
                 int numcost = Integer.parseInt(cost);
                 session.setAttribute("prodcost",numcost);
                 
                 session.setAttribute("proscost",rst.getString("scost"));
                 
                 String qty = rst.getString("quantity");
                 int numqty = Integer.parseInt(qty);
                 session.setAttribute("proqty",numqty);
                 
                 out.println("<tr> <td>" + rst.getString("prodid")+ "</td> <td> " + rst.getString("prodname")+ "</td> <td> " + rst.getString("dcost")+ "</td><td> " + rst.getString("quantity")+ "</td></tr> " );
             }


            
      out.write("      \n");
      out.write("\n");
      out.write("        </table>   \n");
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
