<%-- 
    Document   : regsuccess
    Created on : Mar 6, 2020, 10:29:01 AM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap.css" rel="stylesheet">

    </head>
    <%!
    int id=0;
    %>
     <%   
     
            
            
          
           
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select vid from voter order by vid  desc limit 1");  
  
  
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
    id=rs.getInt("vid");
   
//response.sendRedirect("admin.jsp");
}           
//   
//else
//{
//    response.sendRedirect("invalidvoter.jsp");
//    
//}

                     

con.close();
  }
  catch(Exception e){ e.printStackTrace();
  
    }  

  
%>
    <body>
        <center>
            <br>
            <br>
        <h1>Registration Succesfull</h1>
        <h2>Your Voter ID</h2>
        <h2><font color="green"><%=id%></font></h2>
        <br>
        <br>
        <form action="login.jsp">
            <input type="submit" class="btn primary" >
        </form>
        </center>
    </body>
</html>
