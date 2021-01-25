<%-- 
    Document   : validatead
    Created on : Mar 5, 2020, 6:05:19 PM
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
    </head>
    
      <%   
     
            String uname=request.getParameter("user");
            String pass=request.getParameter("pass");
            
          
           
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select uname,pass from admin where uname=? and pass=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
  
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
    
   
response.sendRedirect("admin.jsp");
}           
   
else
{
    response.sendRedirect("invalidvoter.jsp");
    
}

                     

con.close();
  }
  catch(Exception e){ e.printStackTrace();
  
    }  

  
%>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
