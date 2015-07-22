<%-- 
    Document   : thread_db_get
    Created on : Jun 9, 2015, 3:51:36 AM
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
            String threadtopic=request.getParameter("thread_topic");
            String threadanswer=request.getParameter("thread_answer");
            String email1=(String)session.getAttribute(("email"));
            String location1=(String)session.getAttribute(("userlocation"));
            
        try{
        	Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
            //PreparedStatement ps=con.prepareStatement("select thread_topic,thread_response from thread_all where id=user_email");
            PreparedStatement ps=con.prepareStatement("insert into thread_all (user_email,thread_ques,thread_ans,location) values(?,?,?,?)");
            ps.setString(1,email1);
            ps.setString(2,threadtopic);
            ps.setString(3,threadanswer);
            ps.setString(4,location1);
            
                int t=ps.executeUpdate();
                con.commit();
                if(t>0)
                {
                System.out.print("your record has been inserted");
                }
                response.sendRedirect("city_threads.jsp");
                       
        }
        catch(Exception e)
                {
                    out.print("an error occured, click here to get to get to your city page");%><a href="city_threads.jsp">click here</a>
                    <%
                }
        %>
        
        
    </body>
</html>
