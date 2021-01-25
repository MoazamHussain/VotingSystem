<%-- 
    Document   : vote
    Created on : Mar 1, 2020, 5:14:50 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Page: Vote.Gov</title>
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
<%   
        
            String u,p,t;
           
            
            u=(String)session.getAttribute("u1");
            p=(String)session.getAttribute("p1");
            t=(String)session.getAttribute("a1");
            
            int a=Integer.parseInt(t);
            
            session.setAttribute("u2", u);
            session.setAttribute("p2", p);
            session.setAttribute("a2", a);
            %>
    <div class="container">

      <div class="content" style="background-image:url('img/vote2.png')">
        <div class="page-header">
          <h1>Race</h1>
        </div>
        <div class="row">
          <div class="span14">
		<form action="validatevote.jsp">
		<div class="clearfix">
                 <img src="img/aap.jfif">
	<div class="input">
               <label>Arvind Kejriwal</label>
	<input type="radio" name="pos" value="AAP" id="pres1">
	</div>
	</div>
    <div class="clearfix">
           <img src="img/ncp.jpg">
	<div class="input">
              <label>Sharad Pawar</label>
	<input type="radio" name="pos" value="NCP" id="pres1" >
	</div>
	</div>
    <div class="clearfix">
                <img src="img/BJP.png">
	<div class="input">
                  <label>Narendra Modi</label>
	<input type="radio" name="pos" value="BJP" id="pres2" >
		</div>
		</div>
             <div class="clearfix">
                <img src="img/Inc.jpg">
                <div class="input">
                  <label>Rahul Gandhi</label>
                  <input type="radio" name="pos" value="Congress" id="pres2">
                </div>
              </div>
	<div class="actions">
	<input class="btn" type="reset" value="Cancel" onclick="window.location='overview.html';">
	<input class="btn primary" type="submit" value="Submit Your Vote &rarr;">
		</div>
		</form>
		
          </div>
        </div>
      </div>

      <footer>
        <p></p>
      </footer>

    </div> <!-- /container -->

  </body>
</html>
