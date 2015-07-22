<%-- 
    Document   : index
    Created on : Jun 24, 2015, 11:28:03 AM
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
                            
                 String ques=request.getParameter("id4");
                 
           int scoreint=0;
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
            
    try{


                
            
            PreparedStatement ps=con.prepareStatement("select score from thread_all where thread_ques=? ");
            ps.setString(1, ques);
            
            ResultSet rs;
            rs=ps.executeQuery();
            if(rs.next())
            {
            scoreint =rs.getInt(1);             
            scoreint++;
            }
               }
      catch(SQLException se)
       { out.print(se.getMessage());
       
       }
    
    
    try{
            
            
            PreparedStatement ps=con.prepareStatement("update thread_all set score=? where thread_ques=?");
            ps.setInt(1,scoreint);
            ps.setString(2,ques);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
            out.print(ques);
            }
            con.commit();
            }
            catch(SQLException e)
            {
                
 out.print(e.getMessage());
}
            }
                              catch(Exception e)
                              {
             out.print(e.getMessage());                             
                              }
                              %>

              
        
        <h1>Hello World!</h1>
    </body>
</html>
