<%-- 
    Document   : demo
    Created on : Jun 9, 2015, 1:03:27 AM
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
        <h1>Hello World!</h1><%@ page import="java.sql.*;"%>
        
        
   <br><br>
   <%
       String answer=request.getParameter("thread_ans1");
       String postques1=(String)session.getAttribute(("postques"));
   
   //out.print(postques1+"\n");
   //out.print(answer);
   try{
	    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
   PreparedStatement st=con.prepareStatement("insert into thread_ans (thread_ques,thread_ans) values(?,?)");
   st.setString(1,postques1);
   st.setString(2,answer);
    int t=st.executeUpdate();
                con.commit();
                if(t>0)
                {
                System.out.print("your record has been inserted");
                }
                response.sendRedirect("post_full.jsp");
   
   }
   catch(Exception e)
   {
   
   }
   
   %>
    
    
           
   
        
    </body>
</html>
