<%-- 
    Document   : post_full
    Created on : Jun 10, 2015, 2:17:24 AM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="description" content="Hello World">

	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">

	<!-- for font family "Raleway"-->
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

	<!-- for down arrow icon -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- facebook login icons -->
	<link rel="stylesheet" href="file:///D:/Users/test/Desktop/PROJECT%20SHIT/Draft_2/bootstrap-social.css">
	
	<link rel="stylesheet" href="file:///D:/Users/test/Desktop/PROJECT%20SHIT/Draft_2/navbar.css">

	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>



    </head>
    <body>
        <%@ page import="java.sql.*;"%>     

        <div id="container_2">
			<br><br><br>
			<center>
			<div class="container_1" style="width:70%;">
			<div class="well">
			<center>

        <%
            String postques1=(String)session.getAttribute(("postques"));

            try{
            
            	Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
            PreparedStatement st=con.prepareStatement("select * from thread_all where thread_ques=?");
            //st.setString(1,userlocation1);
            st.setString(1,postques1);
            ResultSet rs;
            rs=st.executeQuery();
            if(rs.next())
            {%>
            
         
            <%
    
           
            %>
            		<div class="thread" id="thread_1">
				<div class="midcol">
				<i class="fa fa-arrow-up" style="color:white;"></i>
				<br>
				<h5 style="color:white;">2000</h5>
				<i class="fa fa-arrow-down" style="color:white;"></i>
				</div>
			
				<div class="thumbnail" >
					<img src="http://piq.codeus.net/static/media/userpics/piq_164392_400x400.png" width="100" height="100">
				</div>

			<div class="entry" style="width:50%;">	
			<p style="color:white;">
            		<%out.print(rs.getString(1));%> 
			</p><hr>
				<p>submitted 
				<time title="Mon Jun 8 00:00:04 2015 UTC" datetime="2015-06-08T00:00:04+00:00" class="live-timestamp">
				10 hours ago
				</time>
				asked
				<a href="/user/user_name" class=""><%out.print(rs.getString(2));%></a>
				to 
				<a href="/city_name" class=""><%out.print(rs.getString(4));%></a>
                                
				</p><hr>
                                <%
            }
           
            }  catch(Exception e)
                            {
                            
                            }
                            %>
				<p>people of hood answered<br>
           
                                    
                                    
                                    <%
                                try{                

                                	Class.forName("com.mysql.jdbc.Driver");
                                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
            PreparedStatement st=con.prepareStatement("select thread_ans from thread_ans where thread_ques=?");
            
            //st.setString(1,userlocation1);
            st.setString(1,postques1);
            ResultSet rs1;
            
            rs1=st.executeQuery();
            while(rs1.next())
            {%><br>
                                <div class="well">
                                    <p>    <%out.print(rs1.getString(1));%></p>
                                </div>
                                    <%
            }
            }
            catch(Exception e1)
            {
            }
             %>
                        
			
                        <br>
                        
                        </div>
                                <form>
                                    <input type="text" placeholder="answer here" name="thread_ans1">
                                    <input type="submit" formaction="demo.jsp">
                                </form>
                                
                                <hr>
			</div>

            
            
           

            
        
    </body>
</html>
