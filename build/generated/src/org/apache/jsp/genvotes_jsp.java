package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class genvotes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            int nonv,v;
            
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Welcome to Vote.Gov</title>\n");
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
      out.write("        background-color: skyblue;\n");
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
      out.write("        min-height: 400px;\n");
      out.write("      }\n");
      out.write("      /* Give a quick and non-cross-browser friendly divider */\n");
      out.write("      .content .span4 {\n");
      out.write("        margin-left: 0;\n");
      out.write("        padding-left: 19px;\n");
      out.write("        border-left: 1px solid #eee;\n");
      out.write("      }\n");
      out.write("\t\t\t.content .span9 {\n");
      out.write("\t\t\t\tpadding-right: 19px;\n");
      out.write("\t\t\t}\n");
      out.write("\n");
      out.write("      .topbar .btn {\n");
      out.write("        border: 0;\n");
      out.write("      }\n");
      out.write("\t\t\t.topbar { height: 50px; }\n");
      out.write("\t\t\t.login { margin-top: 3px; }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <div class=\"topbar\">\n");
      out.write("      <div class=\"fill\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <a class=\"brand\" href=\"index.jsp\">Vote.Gov</a>\n");
      out.write("\t\t\t\t\t<ul class=\"nav\">\n");
      out.write("            <li ><a href=\"admin.jsp\">Home</a></li>\n");
      out.write("            <li class=\"active\"><a href=\"voters.jsp\">Voters</a></li>\n");
      out.write("            <li><a href=\"counting.jsp\">Counting</a></li>\n");
      out.write("            <li><a href=\"results.jsp\">Results</a></li>\n");
      out.write("            <li><a href=\"adlog.jsp\">Logout</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <div class=\"page-header\" >\n");
      out.write("          <h1>Vote.Gov &nbsp; <small>Online voting System</small></h1>\n");
      out.write("           <h2>Admin<span class=\"green\">Dashboard</span>!</h2>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"span14\">\n");
      out.write("           \n");
      out.write("\t\t\t\t\t\t<div class=\"row\"style=\"text-align: center;\">\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("    <h3>Voters Details</h3>\n");
      out.write("      \n");
      out.write("      <table class=\"zebra-striped\"  style=\"\n");
      out.write("    margin-left: 10px;\n");
      out.write("\">\n");
      out.write("        <thead>\n");
      out.write("            \n");
      out.write("          <tr>\n");
      out.write("           \n");
      out.write("              <th>Voter ID</th>\n");
      out.write("            <th>First Name</th>\n");
      out.write("            <th>Last Name</th>\n");
      out.write("            <th>Vote</th>\n");
      out.write("            \n");
      out.write("          </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            ");
      out.write("\n");
      out.write("            \n");
      out.write("            ");
   
     
            String uname=request.getParameter("user");
            String pass=request.getParameter("pass");
            
          
           
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    
    
  Statement stmt=con.createStatement();
  Statement stmt1=con.createStatement();
  Statement stmt2=con.createStatement();
  Statement stmt3=con.createStatement();
  String sql="select * from voter where gender='m'";
  String sql1="select * from voter where gender='f'";
  String sql2="select count(*) as rown from voter where gender='m'";
  String sql3="select count(*) as rowv from voter where gender='f'";
  ResultSet rs=stmt.executeQuery(sql); 
  ResultSet rs1=stmt1.executeQuery(sql1);
  ResultSet rs2=stmt2.executeQuery(sql2);
    rs2.next();
    nonv = rs2.getInt("rown") ;
    rs2.close();
  ResultSet rs3=stmt3.executeQuery(sql3);
   rs3.next();
    v = rs3.getInt("rowv") ;
    rs3.close();
while(rs.next()) 
{
    
   
      out.write("\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("            <td>");
      out.print(rs.getInt("vid"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("firstname"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("lastname"));
      out.write("</td>\n");
      out.write("            <td><b><font color=\"#00008b\">Male</font><b></td>\n");
      out.write("          </tr>\n");
      out.write("         \n");
      out.write("         ");
            


  }
while(rs1.next()) 
{
    
   
      out.write("\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("            <td>");
      out.print(rs1.getInt("vid"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs1.getString("firstname"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs1.getString("lastname"));
      out.write("</td>\n");
      out.write("            <td><b><font color=\"#e75480\">Female</font><b></td>\n");
      out.write("          </tr>\n");
      out.write("         \n");
      out.write("         ");
            


  }

  }
  catch(Exception e){ e.printStackTrace();
  out.println(e);
  
    }  

  

      out.write("\n");
      out.write("        \n");
      out.write("        </tbody>\n");
      out.write("      </table>\n");
      out.write("<div class=\"col-lg-6\" style=\"text-align:center;padding-left: 130px;\">\n");
      out.write("                 <h6 style=\"color:black\">Total Number of Female voters :<font color=\"#e75480\"><b>");
      out.print(v);
      out.write("</b></font></h6>\n");
      out.write("                 <h6 style=\"color:black\">Total Number of Male voters : <font color=\"#00008b\"><b>");
      out.print(nonv);
      out.write("</b></font></h6>\n");
      out.write("                <div id=\"piechart\"></div>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("// Load google charts\n");
      out.write("google.charts.load('current', {'packages':['corechart']});\n");
      out.write("google.charts.setOnLoadCallback(drawChart);\n");
      out.write("\n");
      out.write("// Draw the chart and set the chart values\n");
      out.write("function drawChart() {\n");
      out.write("  var data = google.visualization.arrayToDataTable([\n");
      out.write("  ['Voters', 'Gender'],\n");
      out.write("  ['Female Voters', ");
      out.print(v);
      out.write("],\n");
      out.write("  ['Male Voters', ");
      out.print(nonv);
      out.write("],\n");
      out.write("  \n");
      out.write("  \n");
      out.write("]);\n");
      out.write("\n");
      out.write("  // Optional; add a title and set the width and height of the chart\n");
      out.write("  var options = {'title':'Graphical Represenation of Voting', 'width':550, 'height':300};\n");
      out.write("\n");
      out.write("  // Display the chart inside the <div> element with id=\"piechart\"\n");
      out.write("  var chart = new google.visualization.PieChart(document.getElementById('piechart'));\n");
      out.write("  chart.draw(data, options);\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div> <!-- /span14 -->\n");
      out.write("        </div> <!-- /row -->\n");
      out.write("\t\t\t\n");
      out.write("      </div> <!-- /content -->\n");
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
