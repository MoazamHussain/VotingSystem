<%-- 
    Document   : validatelogin
    Created on : Mar 1, 2020, 5:41:42 PM
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
    <body>
        
          <%   
            String uname=request.getParameter("uname");
            String pass=request.getParameter("pass");
            String type="";
           
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select username,password,party from voter where username=? and password=? and party=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
  stmt.setString(3, type);
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
if (type.equals("")) {
            response.sendRedirect("vote.jsp");
        }

else
{
    response.sendRedirect("index.jsp");
    
}

}                          

con.close();
  }
  catch(Exception e){ e.printStackTrace();
    }  

  
%>
        
        <h1>Hello World!</h1>
    </body>
</html>
