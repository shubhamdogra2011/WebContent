<%-- 
    Document   : user_profile_db
    Created on : Jun 9, 2015, 12:59:30 AM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@ page import="java.sql.*;"%>
        <%
            String email1=(String)session.getAttribute(("email"));
            try{
            	Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
            PreparedStatement st=con.prepareStatement("select * from info_signup where user_email=?");
            st.setString(1,email1);
            ResultSet rs;
            rs=st.executeQuery();
            if(rs.next())
            {
            session.setAttribute("username",rs.getString(1));
            session.setAttribute("userage",rs.getString(2));
            session.setAttribute("userlocation",rs.getString(3));
            session.setAttribute("userdob",rs.getString(4));
            session.setAttribute("userpassword",rs.getString(5));
            session.setAttribute("useremail",rs.getString(6));
            response.sendRedirect("city_threads.jsp");
            }
            
            }
            catch(Exception e)
            {
            
            }
        
        
        %>
    </body>
</html>
