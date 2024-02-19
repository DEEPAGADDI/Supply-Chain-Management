package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class paymenttab_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/confile.jsp");
    _jspx_dependants.add("/headermanufacture.jsp");
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
      out.write("    <head>    \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Product Manufacture Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center>\n");
      out.write("                <h1 style=\"color: black;font-family: times new roman;\">MANUFACTURE HOME PAGE</h1>\n");
      out.write("                <br><br><br>\n");
      out.write("                <a href=\"manufacturepage.jsp\">Home</a>&nbsp;&nbsp;&nbsp;<a href=\"manufactureaddprod.jsp\">Add Product</a>&nbsp;&nbsp;&nbsp;<a href=\"manufactureaddstock.jsp\">Add Stock</a>&nbsp;&nbsp;&nbsp;<a href=\"manufactureviewstock.jsp\">View Stock</a>&nbsp;&nbsp;&nbsp;<a href=\"distributorreq.jsp\">Distributor Request</a>&nbsp;&nbsp;&nbsp;<a href=\"paymenttab.jsp\">Payments</a>&nbsp;&nbsp;&nbsp;<a href=\"manufacturelogin.jsp\">Logout</a>\n");
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
      out.write("        <title>All Payments</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        \n");
      out.write("            <table width=\"50%\" cellpadding=\"5\" cellspacing=\"5\" align=\"center\"> \n");
      out.write("            <tr><td colspan=\"8\"><center><h2>Payment Details</h2></center></td></tr>\n");
      out.write("            <tr style=\"color: #1e247c;\"><td>Payment Id*</td><td>Product Id*</td><td>Distribution Id*</td><td>Payment Type*</td><td>Card Details*</td><td>Cvv Details*<input type=\"password\" name=\"password\"/></td><td>Payment Date*</td><td>Amount Paid*</td></tr>\n");
      out.write("            <br>\n");
      out.write("            ");
 
             String mid = (String)session.getAttribute("mId");
             rst=stmt.executeQuery("select * from paybydistributor where confirmpayment='A' and mid='"+mid+"' order by payid desc");
             while( rst.next())
             {
                 out.println("<tr> <td>" + rst.getString("payid")+ "</td> <td> " + rst.getString("prodid")+ "</td> <td> " + rst.getString("did")+ "</td><td> " + rst.getString("paytype")+ "</td><td>"+rst.getString("carddet")+ " </td><td>"+rst.getString("cvvdet")+ " </td><td>"+rst.getString("paydate")+ " </td><td>"+rst.getString("price")+ " </td></tr> " );
             }


            
      out.write("      \n");
      out.write("\n");
      out.write("            </table>   \n");
      out.write("    </center>\n");
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
