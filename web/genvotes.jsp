<%-- 
    Document   : voters
    Created on : Mar 1, 2020, 5:15:08 PM
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
        background-color: skyblue;
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
            <li class="active"><a href="voters.jsp">Voters</a></li>
            <li><a href="counting.jsp">Counting</a></li>
            <li><a href="results.jsp">Results</a></li>
            <li><a href="adlog.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container">

      <div class="content">
        <div class="page-header" >
          <h1>Vote.Gov &nbsp; <small>Online voting System</small></h1>
           <h2>Admin<span class="green">Dashboard</span>!</h2>
        </div>
        <div class="row">
          <div class="span14">
           
						<div class="row"style="text-align: center;">
							
    <h3>Voters Details</h3>
      
      <table class="zebra-striped"  style="
    margin-left: 10px;
">
        <thead>
            
          <tr>
           
              <th>Voter ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Vote</th>
            
          </tr>
        </thead>
        <tbody>
            <%!
            int nonv,v;
            %>
            
            <%   
     
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
    
   %>

  <tr>
            <td><%=rs.getInt("vid")%></td>
            <td><%=rs.getString("firstname")%></td>
            <td><%=rs.getString("lastname")%></td>
            <td><b><font color="#00008b">Male</font><b></td>
          </tr>
         
         <%            


  }
while(rs1.next()) 
{
    
   %>

  <tr>
            <td><%=rs1.getInt("vid")%></td>
            <td><%=rs1.getString("firstname")%></td>
            <td><%=rs1.getString("lastname")%></td>
            <td><b><font color="#e75480">Female</font><b></td>
          </tr>
         
         <%            


  }

  }
  catch(Exception e){ e.printStackTrace();
  out.println(e);
  
    }  

  
%>
        
        </tbody>
      </table>
<div class="col-lg-6" style="text-align:center;padding-left: 130px;">
                 <h6 style="color:black">Total Number of Female voters :<font color="#e75480"><b><%=v%></b></font></h6>
                 <h6 style="color:black">Total Number of Male voters : <font color="#00008b"><b><%=nonv%></b></font></h6>
                <div id="piechart"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Voters', 'Gender'],
  ['Female Voters', <%=v%>],
  ['Male Voters', <%=nonv%>],
  
  
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Graphical Represenation of Voting', 'width':550, 'height':300};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>

            </div>
  
  


						
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
