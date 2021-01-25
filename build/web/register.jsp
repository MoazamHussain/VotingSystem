<%-- 
    Document   : register
    Created on : Mar 1, 2020, 5:11:57 PM
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
input#pwd {
        width:180px; 
        padding:3px;
        color: #000;
        float:left;
        margin-right:10px;
}
#pwd_strength_wrap {
        border: 1px solid #D5CEC8;
        display: none;
        float: left;
        padding: 10px;
        position: relative;
        width: 320px;
}
#pwd_strength_wrap:before, #pwd_strength_wrap:after {
        content: ' ';
        height: 0;
        position: absolute;
        width: 0;
        border: 10px solid transparent; /* arrow size */
}
#pwd_strength_wrap:before {
    border-bottom: 7px solid rgba(0, 0, 0, 0);
    border-right: 7px solid rgba(0, 0, 0, 0.1);
    border-top: 7px solid rgba(0, 0, 0, 0);
    content: "";
    display: inline-block;
    left: -18px;
    position: absolute;
    top: 10px;
}
#pwd_strength_wrap:after {
        border-bottom: 6px solid rgba(0, 0, 0, 0);
    border-right: 6px solid #fff;
    border-top: 6px solid rgba(0, 0, 0, 0);
    content: "";
    display: inline-block;
    left: -16px;
    position: absolute;
    top: 11px;
}
#pswd_info ul {
        list-style-type: none;
        margin: 5px 0 0;
        padding: 0;
}
#pswd_info ul li {
        background: url(icon_pwd_strength.png) no-repeat left 2px;
        padding: 0 0 0 20px;
}
#pswd_info ul li.valid {
        background-position: left -42px;
        color: green;
}
#passwordStrength {
    display: block;
    height: 5px;
    margin-bottom: 10px;
    transition: all 0.4s ease;
}
.strength0 {
    background: none; /* too short */
    width: 0px;
}
.strength1 {
    background: none repeat scroll 0 0 #FF4545;/* weak */
    width: 25px;
}
.strength2 {
    background: none repeat scroll 0 0 #FFC824;/* good */
    width: 75px;
}
.strength3 {
        background: none repeat scroll 0 0 #6699CC;/* strong */
    width: 100px;
}
 
.strength4 {
        background: none repeat scroll 0 0 #008000;/* best */
    width: 150px;
}
    </style>
  </head>

  <body>

    <div class="topbar">
      <div class="fill">
        <div class="container">
          <a class="brand" href="#">Vote.Gov</a>
        </div>
      </div>
    </div>

    <div class="container">

      <div class="content" style="background-image:url('img/regs.jpg')">
        <div class="page-header">
          <h1>Register</h1>
        </div>
        <div class="row">
          <div class="span14">
						<div>
							<form action="validatereg.jsp">
								<div class="clearfix">
									<label for="ssn">First Name</label>
									<div class="input">
                                                                            <input type="text" name="firstname" required>
									</div>
								</div>
								<div class="clearfix">
									<label for="sent1">Last Name</label>
									<div class="input">
										<input type="text" name="lastname" required>
									</div>
								</div>
								<div class="clearfix">
									<label for="sent2">Address</label>
									<div class="input">
										<input type="text" name="address" required>
									</div>
								</div>
  <div class="clearfix">
                  <label for="ssn">Gender</label>
                  <div class="input">
                    <select name="gender" class="form-control">
                                  <option value="m">M</option>
                                  <option value="f">F</option> 
                                                               
                              </select>
                  </div>
                </div>
                <div class="clearfix">
                  <label for="sent1">Phone No:</label>
                  <div class="input">
                      <input type="number" name="phone" maxlength="10" required>
                  </div>
                </div>
                <div class="clearfix">
                  <label for="sent2">Nationality</label>
                  <div class="input">
                    <input type="text" name="nationality" value="Indian">
                  </div>
                </div>  <div class="clearfix">
                  <label for="ssn">Adhaar Card No:</label>
                  <div class="input">
                      <input type="number" name="adhaar" maxlength="12" placeholder="0000-0000-0000" required>
                  </div>
                </div>
                <div class="clearfix">
                  <label for="sent1">Email</label>
                  <div class="input">
                    <input type="text" name="email" required>
                  </div>
                </div>
                <div class="clearfix">
                  <label for="sent2">Username</label>
                  <div class="input">
                    <input type="text" name="username" required>
                  </div>
                </div>
                 <div class="clearfix">
                  <label for="sent2">Password</label>
                  <div class="input">
                    <input type="Password" id="pwd" name="password" required>
                     <div id="pwd_strength_wrap">
                <div id="passwordDescription">Password not entered</div>
                <div id="passwordStrength" class="strength0"></div>
                <div id="pswd_info">
<!--                        <strong>Strong Password Tips:</strong>-->
                        <!--ul>
                                <li class="invalid" id="pnum">At least one number</li>
                                <li class="invalid" id="capital">At least one lowercase &amp; one uppercase letter</li>
                                <li class="invalid" id="spchar">At least one special character</li>
                        </ul-->
                </div><!-- END pswd_info -->
        </div><!-- END pwd_strength_wrap -->
                  </div>
                </div>
                <div class="clearfix">
                  <label for="sent2">Confirm Password</label>
                  <div class="input">
                    <input type="Password" name="cpassword" required>
                  </div>
                </div>
                
								<div class="actions" style="background:transparent;">
									<input class="btn" type="reset" value="Cancel" onclick="window.location='index.jsp';">
									<input class="btn primary" type="submit" value="Submit &rarr;">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>
       
$("input#pwd").on("focus keyup", function () {
         
});
 
$("input#pwd").blur(function () {
         
});
$("input#pwd").on("focus keyup", function () {
        var score = 0;
        var a = $(this).val();
        var desc = new Array();
 
        // strength desc
        desc[0] = "Too short";
    desc[1] = "Weak";
    desc[2] = "Good";
    desc[3] = "Strong";
    desc[4] = "Best";
         
});
 
$("input#pwd").blur(function () {
 
});
$("input#pwd").on("focus keyup", function () {
        var score = 0;
        var a = $(this).val();
        var desc = new Array();
 
        // strength desc
        desc[0] = "Too short";
        desc[1] = "Weak";
        desc[2] = "Good";
        desc[3] = "Strong";
        desc[4] = "Best";
         
        // password length
        if (a.length >= 6) {
            $("#length").removeClass("invalid").addClass("valid");
            score++;
        } else {
            $("#length").removeClass("valid").addClass("invalid");
        }
 
        // at least 1 digit in password
        if (a.match(/\d/)) {
            $("#pnum").removeClass("invalid").addClass("valid");
            score++;
        } else {
            $("#pnum").removeClass("valid").addClass("invalid");
        }
 
        // at least 1 capital & lower letter in password
        if (a.match(/[A-Z]/) && a.match(/[a-z]/)) {
            $("#capital").removeClass("invalid").addClass("valid");
            score++;
        } else {
            $("#capital").removeClass("valid").addClass("invalid");
        }
 
        // at least 1 special character in password {
        if ( a.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ) {
                $("#spchar").removeClass("invalid").addClass("valid");
                score++;
        } else {
                $("#spchar").removeClass("valid").addClass("invalid");
        }
 
 
        if(a.length > 0) {
                //show strength text
                $("#passwordDescription").text(desc[score]);
                // show indicator
                $("#passwordStrength").removeClass().addClass("strength"+score);
        } else {
                $("#passwordDescription").text("Password not entered");
                $("#passwordStrength").removeClass().addClass("strength"+score);
        }
});
 
$("input#pwd").blur(function () {
 
});
$("input#pwd").on("focus keyup", function () {
        var score = 0;
        var a = $(this).val();
        var desc = new Array();
 
        // strength desc
        desc[0] = "Too short";
        desc[1] = "Weak";
        desc[2] = "Good";
        desc[3] = "Strong";
        desc[4] = "Best";
 
        $("#pwd_strength_wrap").fadeIn(400);
         
        // password length
        if (a.length >= 6) {
            $("#length").removeClass("invalid").addClass("valid");
            score++;
        } else {
            $("#length").removeClass("valid").addClass("invalid");
        }
 
        // at least 1 digit in password
        if (a.match(/\d/)) {
            $("#pnum").removeClass("invalid").addClass("valid");
            score++;
        } else {
            $("#pnum").removeClass("valid").addClass("invalid");
        }
 
        // at least 1 capital & lower letter in password
        if (a.match(/[A-Z]/) && a.match(/[a-z]/)) {
            $("#capital").removeClass("invalid").addClass("valid");
            score++;
        } else {
            $("#capital").removeClass("valid").addClass("invalid");
        }
 
        // at least 1 special character in password {
        if ( a.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ) {
                $("#spchar").removeClass("invalid").addClass("valid");
                score++;
        } else {
                $("#spchar").removeClass("valid").addClass("invalid");
        }
 
 
        if(a.length > 0) {
                //show strength text
                $("#passwordDescription").text(desc[score]);
                // show indicator
                $("#passwordStrength").removeClass().addClass("strength"+score);
        } else {
                $("#passwordDescription").text("Password not entered");
                $("#passwordStrength").removeClass().addClass("strength"+score);
        }
});
 
$("input#pwd").blur(function () {
        $("#pwd_strength_wrap").fadeOut(400);
});
    </script>
  </body>
</html>
