<%-- 
    Document   : validatevote
    Created on : Mar 5, 2020, 4:40:21 PM
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
        
            String u,p,v;
            int t;
            
           
            
            u=(String)session.getAttribute("u2");
            p=(String)session.getAttribute("p2");
            t=(Integer)session.getAttribute("a2");
           
            v=request.getParameter("pos");
            
            if(v.equals(""))
            {
                response.sendRedirect("vote.jsp");
            }
            else
            {
                try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("UPDATE voter SET party=? WHERE username=? and password=? and vid=?");  
  stmt.setString(1, v);
  stmt.setString(2, u);
  stmt.setString(3, p);
  stmt.setInt(4, t);
 
  stmt.executeUpdate();
                     

con.close();
response.sendRedirect("submit.jsp");
  }
  catch(Exception e){ e.printStackTrace();
  
    }  

        }
%>
         
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
