<%-- 
    Document   : user_login_check
    Created on : Jun 9, 2015, 12:58:06 AM
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
        <%@ page import="java.sql.*;"%>
        
        
        
        <%
        String userid = request.getParameter("user_email");  
        session.setAttribute("email",userid);
        String pwd = request.getParameter("user_password");
        //out.print(userid);
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from info_signup where user_email='" + userid + "' and user_password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
         
        response.sendRedirect("user_profile_db.jsp");
    } else {
        out.println("Invalid password <a href='home.jsp'>try again</a>");
    }
        %>
        
    </body>
</html>
