<%-- 
    Document   : admin
    Created on : Mar 1, 2020, 5:12:22 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        background-image:url("img/flag.jpg") ;
        padding: 20px;
        margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */
        -webkit-border-radius: 0 0 6px 6px;
           -moz-border-radius: 0 0 6px 6px;
                border-radius: 0 0 6px 6px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
                height: 500px;
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
            <li class="active"><a href="admin.jsp">Home</a></li>
            <li><a href="voters.jsp">Voters</a></li>
            <li><a href="counting.jsp">Counting</a></li>
            <li><a href="results.jsp">Results</a></li>
            <li><a href="adlog.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container">

      <div class="content">
        <div class="page-header">
          <h1>Vote.Gov &nbsp; <small>Online voting System</small></h1>
        </div>
        <div class="row" style="text-align: center; margin-left: 10px;">
            <br><br>
            <h2>Admin<span class="green">Dashboard</span>!</h2>
            <br><br><br>
<a href="voters.jsp" class="btn large success">Voters</a>
<a href="counting.jsp" class="btn large success">Counting</a>
<a href="results.jsp" class="btn large success">Results</a></li>
<a href="adlog.jsp" class="btn large success">Logout</a>


			
      </div>
      </div> <!-- /content -->

      <footer>
        <p></p>
      </footer>

    </div> <!-- /container -->

  </body>
</html>

