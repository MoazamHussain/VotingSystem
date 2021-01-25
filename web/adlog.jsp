<%-- 
    Document   : adlog
    Created on : Mar 1, 2020, 5:12:43 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Login: Vote.Gov</title>
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
        background-color: #fff;
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
        min-height: 500px;
      }
      /* Give a quick and non-cross-browser friendly divider */
      .content .span4 {
        margin-left: 0;
        padding-left: 19px;
        border-left: 1px solid #eee;
      }

      .topbar .btn {
        border: 0;
      }
      label{
          color: wheat;
      }
    </style>
  </head>

  <body>

    <div class="topbar">
      <div class="fill">
        <div class="container">
          <a class="brand" href="index.jsp">Vote.Gov</a>
        </div>
      </div>
    </div>

    <div class="container">

      <div class="content" style="background-image:url('img/login.jpeg');">
        <div class="page-header">
          <h1>Admin Login</h1>
        </div>
        <div class="row">
          <div class="span14">
						<div>
							<form action="validatead.jsp">
								<div class="clearfix">
									<label for="sent1">User Name</label>
									<div class="input">
                                                                            <input type="text" name="user" autocomplete="off">
									</div>
								</div>
								<div class="clearfix">
									<label for="sent2">Password</label>
									<div class="input">
										<input type="Password" name="pass" autocomplete="off">
									</div>
								</div>
                                                            <div class="actions" style="background:transparent">
									<input class="btn" type="reset" value="Cancel" onclick="window.location='index.jsp';">
									<input class="btn primary" type="submit" value="Continue &rarr;">
								</div>
							</form>
						</div>
          </div>
        </div>
      </div>

      <footer>
        <p></p>
      </footer>

    </div> <!-- /container -->

  </body>
</html>
