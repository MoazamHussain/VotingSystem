<%-- 
    Document   : validatevoter
    Created on : Mar 5, 2020, 3:57:17 PM
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
        String str="";
            String uname=request.getParameter("username");
            String pass=request.getParameter("password");
            String type=request.getParameter("adhaar");
            session.setAttribute("u1", uname);
            session.setAttribute("p1", pass);
            session.setAttribute("a1", type);
            int a=Integer.parseInt(type);
           
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select username,password,vid,party from voter where username=? and password=? and vid=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
  stmt.setInt(3, a);
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
    
    str=rs.getString("party");
    out.println(str+"hi");
    
    if(str.equals(""))
    {
        response.sendRedirect("vote.jsp");
    }
    else 
    {
         response.sendRedirect("votegiven.jsp");
    }

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
