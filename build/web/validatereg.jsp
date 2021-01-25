<%-- 
    Document   : validatereg
    Created on : Mar 1, 2020, 5:44:30 PM
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
        
               String fname=request.getParameter("firstname");
                    String lname=request.getParameter("lastname");
                    String addr=request.getParameter("address");
                    String gender=request.getParameter("gender");
                    String phone=request.getParameter("phone").toString();
                    String nation=request.getParameter("nationality");
                    String adhaar=request.getParameter("adhaar").toString();
                    String emailid=request.getParameter("email");
                    String uname=request.getParameter("username");
                    String pass=request.getParameter("password");
                    String cpass=request.getParameter("cpassword");
                    String empty="";
                    
            long a,p;
            p=Long.parseLong(phone);
            a=Long.parseLong(adhaar);
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root",""); 
    if(pass.equals(cpass))
            {
    String sql="INSERT INTO voter(firstname,lastname,address,gender,phone,nationality,adhaar,email,username,password,party)"
            + " VALUES (?,?,?,?,?,?,?,?,?,?,?)";
 
    PreparedStatement stmt1=con.prepareStatement(sql);  
  stmt1.setString(1, fname);
  stmt1.setString(2, lname);
  stmt1.setString(3, addr);
  stmt1.setString(4, gender);
  stmt1.setLong(5, p);
  stmt1.setString(6, nation);
  stmt1.setLong(7, a);
  stmt1.setString(8, emailid);
  stmt1.setString(9, uname);
  stmt1.setString(10, pass);
 stmt1.setString(11, empty);
 
 
  stmt1.executeUpdate();
  response.sendRedirect("regsuccess.jsp");
con.close();
            }
            else
            {
                response.sendRedirect("invalidvoter.jsp");
            }
}

            
            
  catch(Exception e)
  { e.printStackTrace();
  response.sendRedirect("invalidvoter.jsp");
    }
        
        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
