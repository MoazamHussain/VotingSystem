package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Login: Vote.Gov</title>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("    <!-- Le styles -->\n");
      out.write("    <link href=\"bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("      /* Override some defaults */\n");
      out.write("      html, body {\n");
      out.write("        background-color: #eee;\n");
      out.write("      }\n");
      out.write("      body {\n");
      out.write("        padding-top: 40px; /* 40px to make the container go all the way to the bottom of the topbar */\n");
      out.write("      }\n");
      out.write("      .container > footer p {\n");
      out.write("        text-align: center; /* center align it with the container */\n");
      out.write("      }\n");
      out.write("      .container {\n");
      out.write("        width: 820px; /* downsize our container to make the content feel a bit tighter and more cohesive. NOTE: this removes two full columns from the grid, meaning you only go to 14 columns and not 16. */\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      /* The white background content wrapper */\n");
      out.write("      .content {\n");
      out.write("        background-color: #fff;\n");
      out.write("        padding: 20px;\n");
      out.write("        margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */\n");
      out.write("        -webkit-border-radius: 0 0 6px 6px;\n");
      out.write("           -moz-border-radius: 0 0 6px 6px;\n");
      out.write("                border-radius: 0 0 6px 6px;\n");
      out.write("        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);\n");
      out.write("           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);\n");
      out.write("                box-shadow: 0 1px 2px rgba(0,0,0,.15);\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      /* Page header tweaks */\n");
      out.write("      .page-header {\n");
      out.write("        background-color: #f5f5f5;\n");
      out.write("        padding: 20px 20px 10px;\n");
      out.write("        margin: -20px -20px 20px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      /* Styles you shouldn't keep as they are for displaying this base example only */\n");
      out.write("      .content .span10,\n");
      out.write("      .content .span4 {\n");
      out.write("        min-height: 500px;\n");
      out.write("      }\n");
      out.write("      /* Give a quick and non-cross-browser friendly divider */\n");
      out.write("      .content .span4 {\n");
      out.write("        margin-left: 0;\n");
      out.write("        padding-left: 19px;\n");
      out.write("        border-left: 1px solid #eee;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .topbar .btn {\n");
      out.write("        border: 0;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <div class=\"topbar\">\n");
      out.write("      <div class=\"fill\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <a class=\"brand\" href=\"#\">Vote.Gov</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <div class=\"page-header\">\n");
      out.write("          <h1>Login</h1>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"span14\">\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<form action=\"validatevoter.jsp\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"ssn\">Adhaar no.</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"input\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"number\" name=\"adhaar\" maxlength=\"13\" autocomplete=\"off\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"sent1\">User Name</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"input\">\n");
      out.write("                                                                            <input type=\"text\" name=\"username\" maxlength=\"13\" autocomplete=\"off\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"sent2\">Password</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"input\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"Password\" name=\"password\" maxlength=\"13\" autocomplete=\"off\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"actions\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"btn\" type=\"reset\" value=\"Cancel\" onclick=\"window.location='index.jsp';\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"btn primary\" type=\"submit\" value=\"Submit &rarr;\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <footer>\n");
      out.write("        <p></p>\n");
      out.write("      </footer>\n");
      out.write("\n");
      out.write("    </div> <!-- /container -->\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
