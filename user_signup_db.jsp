<%-- 
    Document   : user_signup_db
    Created on : Jun 9, 2015, 12:51:59 AM
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
         String username=request.getParameter("user_name");
         String userage=request.getParameter("user_age");
         String usercity=request.getParameter("user_city");
         String userdob=request.getParameter("user_dob");
         String userpassword=request.getParameter("user_password");
         String userpasswordconfirm=request.getParameter("user_password_confirm");
         String useremail=request.getParameter("user_email");
         
         
         
         if(userpassword.equals(userpasswordconfirm))
         {
         
         
                try{
                	Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
                PreparedStatement ps= con.prepareStatement("insert into info_signup(user_name,user_password,user_age,user_city,user_dob,user_email) values(?,?,?,?,?,?)");
                ps.setString(1,username);
                ps.setString(2,userpassword);
                ps.setString(3,userage);
                ps.setString(4,usercity);
                ps.setString(5,userdob);
                ps.setString(6,useremail);
                int t=ps.executeUpdate();
                con.commit();
                if(t>0)
                {
                System.out.print("your record has been inserted");
                response.sendRedirect("home.jsp");
                }
                }
                catch(Exception e)
                {
                
                }
         }
         else
         {
         out.print("wrong password");
         }
         
        %>
    </body>
</html>
