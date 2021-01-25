<%-- 
    Document   : results
    Created on : Mar 1, 2020, 5:13:43 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Welcome to Vote.Gov</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
    <link href="bootstrap.css" rel="stylesheet">
    <style type="text/css">
      /* Override some defaults */
      html, body {
        background-color: #eee;
      }
      body {
        padding-top: 40px; /* 40px to make the container go all the way to the bottom of the topbar */
      }
      .container > footer p {
        text-align: center; /* center align it with the container */
      }
      .container {
        width: 820px; /* downsize our container to make the content feel a bit tighter and more cohesive. NOTE: this removes two full columns from the grid, meaning you only go to 14 columns and not 16. */
      }

      /* The white background content wrapper */
      .content {
        background-image:url("img/flag.jpg");
        padding: 20px;
        margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */
        -webkit-border-radius: 0 0 6px 6px;
           -moz-border-radius: 0 0 6px 6px;
                border-radius: 0 0 6px 6px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
      }

      /* Page header tweaks */
      .page-header {
        background-color: #f5f5f5;
        padding: 20px 20px 10px;
        margin: -20px -20px 20px;
      }

      /* Styles you shouldn't keep as they are for displaying this base example only */
      .content .span10,
      .content .span4 {
        min-height: 400px;
      }
      /* Give a quick and non-cross-browser friendly divider */
      .content .span4 {
        margin-left: 0;
        padding-left: 19px;
        border-left: 1px solid #eee;
      }
			.content .span9 {
				padding-right: 19px;
			}

      .topbar .btn {
        border: 0;
      }
			.topbar { height: 50px; }
			.login { margin-top: 3px; }

    </style>
  </head>

  <body>

    <div class="topbar">
      <div class="fill">
        <div class="container">
          <a class="brand" href="index.jsp">Vote.Gov</a>
					<ul class="nav">
            <li ><a href="admin.jsp">Home</a></li>
            <li><a href="voters.jsp">Voters</a></li>
            <li ><a href="counting.jsp">Counting</a></li>
            <li  class="active"><a href="results.jsp">Results</a></li>
            <li><a href="adlog.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container">

      <div class="content">
        <div class="page-header">
          <h1>Vote.Gov &nbsp; <small>Online voting System</small></h1>
            <h2>Admin<span class="green">Dashboard</span>!</h2>
        </div>
        <div class="row">
          <div class="span14">
          
						<div class="row" style="text-align: center;">
                                                    
      <%!
       String win="",cn="",i="";
            int c1=0,c2=0,c3=0,c4=0;
            %>
             <%   
     
           
           
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    
   
  Statement stmt=con.createStatement(); 
  
  String sql="select count(*) as rowa from voter where party= 'AAP'";
  String sq2="select count(*) as rown from voter where party='NCP'";
  String sq3="select count(*) as rowb from voter where party='BJP'";
  String sq4="select count(*) as rowc from voter where party='Congress'";
 
  
  ResultSet rs=stmt.executeQuery(sql); 
  rs.next();
c1 = rs.getInt("rowa") ;
rs.close() ;

  ResultSet rs2=stmt.executeQuery(sq2); 
   rs2.next();
c2 = rs2.getInt("rown") ;
rs2.close() ;

  ResultSet rs3=stmt.executeQuery(sq3); 
   rs3.next();
c3 = rs3.getInt("rowb") ;
rs3.close() ;

  ResultSet rs4=stmt.executeQuery(sq4); 
   rs4.next();
c4 = rs4.getInt("rowc") ;
rs4.close() ;
   
if(c1>c2 && c1>c3 && c1>c4)
{
    i="img/aap.jfif";
    win="AamAadmi party";
    cn="Arvind Kejriwal";
}
else if(c2>c1 && c2>c3 && c2>c4)
{
    i="img/ncp.jpg";
    win="NCP";
    cn="Sharad Pawar";
}
else if(c3>c1 && c3>c2 && c3>c4)
{
    i="img/BJP.png";
     win="BJP";
    cn="Narendra Modi";
}
else if(c4>c1 && c4>c2 && c4>c3)
{
    i="img/Inc.png";
    win="Congress";
    cn="Rahul Gandhi";
}
else
{
    win="Results yet to be declared";
    cn="-------";
}

  con.close();
  }
  catch(Exception e){ e.printStackTrace();
  
    }  

  
%>
<font color="white">	
							
<h3 style="color: white">Results</h3>
     
  

    <img src="<%=i%>">
  <h1 style="color: white"><strong><%=win%></strong></h1>
  <h2 style="color: white"><strong><%=cn%></strong></h2>
<p>
  Has Won the Elections
</p>
</font>					
								
						</div>
					</div> <!-- /span14 -->
        </div> <!-- /row -->
			
      </div> <!-- /content -->

      <footer>
        <p></p>
      </footer>

    </div> <!-- /container -->

  </body>
</html>
