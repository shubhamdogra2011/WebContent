<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*,java.io.UnsupportedEncodingException,java.net.URLDecoder"%>
<% 
    		    		 
						   Cookie cookie = null;
						   Cookie[] cookies = null;
						   // Get an array of Cookies associated with this domain
						   cookies = request.getCookies();
						  
						      if( cookies != null ){
							     // out.println("<h2> Found Cookies Name and Value</h2>");
	                                                      
	                                                      // out.print("length : " + cookies.length);
							       //  out.print("Name : " + cookie.getName( ) + ",  ");
							        // out.print("Value: " + cookie.getValue( )+" <br/>");
	                                                         
	                                          
	                
	                try{
	                	Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe?autoReconnect=true&relaxAutoCommit=true","root","");
                        
	                PreparedStatement ps=con.prepareStatement("select * from info_signup where user_email=?");
	                cookie=cookies[2];
	                //ps.setString(1,cookie.getValue());
	                String a=  URLDecoder.decode(""+cookie.getValue(), "UTF-8");
	                ps.setString(1,a);
	                //System.out.println (""+cookie.getValue());
	                System.out.println (""+a);
	            ResultSet rs;
	            rs=ps.executeQuery();
	            if(rs.next())
	            {
	                //response.sendRedirect("user_profile.jsp");
	            	System.out.println ("record already present");
	            	
	            }
	            else{
	                
	                
	            	   try{
	                       ps= con.prepareStatement("insert into info_signup(user_email,user_name) values(?,?)");
	                       cookie=cookies[1];//user_name
	                       a=  URLDecoder.decode(""+cookie.getValue(), "UTF-8");
	                       ps.setString(2,a);
	                      // ps.setString(2,cookie.getValue());
	                       cookie=cookies[2];//user_email
	                       a=  URLDecoder.decode(""+cookie.getValue(), "UTF-8");
	                       ps.setString(1,a);
	                      // ps.setString(1,cookie.getValue());
	                       int t=ps.executeUpdate();
	                       con.commit();
	                      
	                       }
	                       catch(SQLException e)
	                       {
	                       System.out.println(e.getMessage());
	                       }}}
	                       catch(SQLException se)
	                       {
	                    	   System.out.println(se.getMessage());
	                       }                                         
	                                                }else{
	       						     // out.println("<h2>No cookies founds</h2>");
	       						  }		
	       						  
						      
	       						  %>
	    		
	    		
						   
		
</body>
</html>