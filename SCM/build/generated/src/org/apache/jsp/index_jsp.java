package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
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
      out.write("               \n");
      out.write("<h1 style=\"font-size:40px;font-family:algerian;color:black;margin-top: 10px; margin-left: 5px;\"><b>SUPPLY CHAIN MANAGEMENT</b></h1>\n");
      out.write("               \n");
      out.write("                \n");
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
      out.write("        <title>Home Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("    font-family: sans-serif;\n");
      out.write("    background-color: #cccccc;\n");
      out.write("}\n");
      out.write("\n");
      out.write("header{\n");
      out.write("    padding: 30px;\n");
      out.write("    background-color:#177acc;\n");
      out.write("    color: whitesmoke;\n");
      out.write("}\n");
      out.write("\n");
      out.write("header a{\n");
      out.write("    text-decoration: none;\n");
      out.write("    color: white;\n");
      out.write("    font-size: 18px;\n");
      out.write("    border: 2px solid black;\n");
      out.write("    padding: 15px;\n");
      out.write("    background-color:#dca21e;\n");
      out.write("    border-radius:10px 10px 10px 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("header a:hover{\n");
      out.write("    color: black;\n");
      out.write("    background-color: white;\n");
      out.write("    font-size: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("footer{\n");
      out.write("    position: fixed;\n");
      out.write("    left: 0;\n");
      out.write("    bottom: 0;\n");
      out.write("    width: 100%;\n");
      out.write("    background-color:#d97314;\n");
      out.write("    color: black;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Create two equal columns that floats next to each other */\n");
      out.write(".col {\n");
      out.write("    float: left;\n");
      out.write("    width: 50%;\n");
      out.write("    padding: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write(".row:after {\n");
      out.write("    content: \"\";\n");
      out.write("    display: table;\n");
      out.write("    clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sample{\n");
      out.write("    background-color: #177acc;\n");
      out.write("    border: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 15px 32px;\n");
      out.write("    text-align: center;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 10px;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("td {\n");
      out.write("    border: 1px solid black;\n");
      out.write("    text-align: left;\n");
      out.write("    padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".inputfield{\n");
      out.write("    width: 350px;\n");
      out.write("    height: 40px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".submit-btn{\n");
      out.write("    width: 150px;\n");
      out.write("    height: 50px;\n");
      out.write("    font-size: 18px;\n");
      out.write("    font-weight: bold;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("  position: relative;\n");
      out.write("  text-align: center;\n");
      out.write("  color: black;\n");
      out.write("  font-size: 30px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".txtcenter {\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 18%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".myimg{\n");
      out.write("    opacity: 0.6;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    <center>\n");
      out.write("        <br><br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <img src=\"img/supply-chain-manager.1.1.jpg\" alt=\"img\" width=\"650px\" height=\"500px\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                \n");
      out.write("                <h2>Services Provided</h2>\n");
      out.write("                <br>\n");
      out.write("                <hr>\n");
      out.write("                <br><br>\n");
      out.write("                <p>Supply chain management is the management of the flow of goods and services and includes all processes that transform raw materials into final products. It involves the active streamlining of a business's supply-side activities to maximize customer value and gain a competitive advantage in the marketplace. </p>\n");
      out.write("                <br><br>\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                       Supply chain management (SCM) is the centralized management of the flow of goods and services and includes all processes that transform raw materials into final products.\n");
      out.write("                    </li>\n");
      out.write("                    <br>\n");
      out.write("                    <li>\n");
      out.write("                       By managing the supply chain, companies can cut excess costs and deliver products to the consumer faster and more efficiently.\n");
      out.write("                    </li>\n");
      out.write("                    <br>\n");
      out.write("                    <li>\n");
      out.write("                       Good supply chain management keeps companies out of the headlines and away from expensive recalls and lawsuits.  \n");
      out.write("                    </li>\n");
      out.write("                    <br>\n");
      out.write("                    <li>\n");
      out.write("                     The five most critical elements of SCM are developing a strategy, sourcing raw materials, production, distribution, and returns.\n");
      out.write("                    </li>\n");
      out.write("                    <br>\n");
      out.write("                    <li>\n");
      out.write("                     A supply chain manager is tasked with controlling and reducing costs and avoiding supply shortages.\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <br><br>\n");
      out.write("                <button class=\"sample\">\n");
      out.write("                    Read more\n");
      out.write("                </button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br><br><br><br><br>\n");
      out.write("    </center>\n");
      out.write("        \n");
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
