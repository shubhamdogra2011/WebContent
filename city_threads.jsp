<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<title>City</title>
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


<!-- for down arrow icon -->
<script>
$(document).ready(function(){
    $("#hide").click(function(){
        $("#container_1").hide(1000);
    });
    $("#show").click(function(){
        $("#container_1").show(1000);
    });
});

</script>


	
	<style type="text/css">

	body{
		background-color: #295266;
		font: 14px / 1.625 "Raleway", sans-serif;
	}


	.header{
				 background-color: #12222B;
  		background-position: 70% 80%;
  		color: #1e1e1e;

	}

	.text{
		padding-top: 250px;
		text-align: center;
		font: 14px / 1.625 "Raleway", sans-serif;
		  color: #B4B9BC
	}

	.text_lg{
		color:#CACED0;
		font-size: 70px;
	}

	.navbar{
		font: 14px / 1.625 "Raleway", sans-serif;

	}

	#show{
		margin: 30px;
	}

	.container_1{
		margin: 30px;
		ext-align: center;
		font: 14px / 1.625 "Raleway", sans-serif;
		  color: #12222B;
	}

	

	.well{
		background-color: #ffffff;
	}

	.col-sm-4{
		padding: 30px;
	}

	.panel-body{
		padding: 30px;
	}

	.modal{
		background-color: #295266;

	}

	.modal-content{
		background-color: #12222B;
	}

	.modal-header{
		background-color: #ae1f32;
    color: white;
	}

  .button{ 
    background-color: #ae1f32;
    color: white;
  }
  .btn{
    background-color: #ae1f32;
    color: white;
  }

.midcol {
  float: right;
  margin-right: 7px;
  margin-left: 7px;
  background: transparent;
  overflow: hidden;
}

.thumbnail {
  float: left;
  font-size: 0;
  margin: 0;
  margin-right: 5px;
  margin-bottom: 2px;
  overflow: hidden;
  width: 70px;
}

.entry {
  overflow: hidden;
  margin-left: 3px;
  opacity: 1;
}

.city_thumbnail{
  float: left;
  
  margin: 2px;
  margin-right: 5px;
  margin-bottom: 2px;
  overflow: hidden;
  
}

.title {
  font-size: medium;
  font-weight: normal;
  margin-bottom: 1px;
}

.tagline {
  color: #888;
  font-size: x-small;
}

.thread{
	margin-bottom: 50px;

}


	</style>





</head>

<body>
    <%@ page import="java.sql.*;"%>      
        <%   String var=request.getParameter("id4");
        String cityselect=(String)session.getAttribute(("userlocation"));
        String userid=(String)session.getAttribute(("useremail"));
        %>
<header>
		<!-- Navbar -->
 
<nav class="navbar navbar-default navbar-fixed-top" id="my-navbar">
  <div class="container">
    <div class="row">
            <div class="col-lg-11">
                
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">HooD</a>
    </div>
 
    <div class="collapse navbar-collapse" id="navbar-collapse">
        
    <ul class="nav navbar-nav">
        <li class="active"><a href="home.jsp">Home</a></li>
        <li><a href="#feedback">Feedback</a> 
  	<li><a href="#gallery">Gallery</a> 
  	<li><a href="#features">Features</a> 
  	<li><a href="#faq">Faq</a> 
  	<li><a href="#contact">ContactUs</a> 
     </ul>
                

<button type="button" class="btn btn navbar-btn navbar-right " data-toggle="collapse" data-target="#demo" >LOGIN</button>
<!--unable to space the buttons  tried &nbsp; tried margin-->
     <button type="button" class="btn btn navbar-btn navbar-right" data-toggle="collapse" data-target="#demo1">SIGN-UP</button>
                
            </div>
       
            
     
 

       
  <div id="demo" class="collapse">
  
      <br>
      <br>
      <br>
    <form role="form">
        <div class="row">
            <div class="form-group col-lg-4 col-lg-push-4">
                <input align="center" type="email" class="form-control" name="user_email" placeholder="enter your email address">
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-4 col-lg-push-4">
                    <input type="password" class="form-control" name="user_password" placeholder="enter your password">
            </div>
        </div>
        <div class="row">
        <br>
        <div class="form-group col-lg-4 col-lg-push-7">
                <input type="submit" formaction="user_login_check.jsp" value="submit" class="btn btn">
            </div>
                </div>
  
    </form>
      
  </div>
       
</div>
                  
      
    </div>
  </div>
    <div id="demo1" class="collapse">
        <form >
                    <div class="row">
                            <div class="form-group col-lg-2 col-lg-push-3">
                               <label for="user-name">    Name:</label>
                                <input type="text" class="form-control"  id="user-name" name="user_name" placeholder="ex. amit rajput" >
                                
                            </div>
                            
                            <div class="form-group col-lg-2 col-lg-push-3">
                                <label for="user-email">    Email Address:</label>
                                <input type="email" class="form-control" id="user-email" name="user_email" placeholder="ex. abc@gmail.com">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-lg-2 col-lg-push-3">
                                <label for="user-password">    Password:</label>
                                <input type="password" class="form-control" id="user-password" name="user_password" placeholder="enter your password">
                                <label for="user-password"> Confirm Password:</label>
                                <input type="password" class="form-control" id="user-password" name="user_password_confirm" placeholder="enter your password">
                        </div>
                    </div>
                    <div class="row">
                            <div class="form-group col-lg-2 col-lg-push-3">
                                <label for="user-age">    Enter Age:</label>
                                <input type="number" class="form-control" name="user_age" placeholder="enter your age">
                        </div>
                            
                        <div class="form-group col-lg-2 col-lg-push-3">
                                <label for="user-city">    City:</label>
                                <input type="text" class="form-control" name="user_city" placeholder="enter your city">
                        </div>
                    </div>
                    <div class="row">
                            <div class="form-group col-lg-2 col-lg-push-3">
                                <label for="user-dob color=white">    Date of Birth:</label>
                                <input type="text" class="form-control" name="user_dob" placeholder="enter your Date of birth">
                            </div>
                    </div>
                  <center>
                      <div class="form-group">
                            <input formaction="user_signup_db.jsp" class=" btn btn" type="submit" value="sumbit">
                      </div>
                  </center>
            </form>
    </div>
</nav>

<!-- End navbar -->
			

			<br><br><br>
                        <center>
                            <h2><font color="white"> welcome to 
                                <%if(var != null && !var.isEmpty())
                                {%>
                                <%out.print(var);
                                 }
                                    else{
                                        out.print(cityselect);
                                }%>
                                </font></h2>
                        </center>
                        <br><br>

			<center>
<%if(userid != null && !userid.isEmpty())
                                {%>
			<a class="btn  btn-lg" data-toggle="modal" data-target="#new-thread">Ask A Question</a>
                        <%}
//else{
//response.sendRedirect("demo2.jsp");}
                        %>
                        
                        
                                  
<div class="modal fade" id="new-thread" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title"><b>ask your question</b></h4>
        </div>
       <div class="modal-body">
        
       <div class="form-group">
             <label for="name your thread"></label>
             <textarea class="form-control" rows="3" name="thread_topic" id="comment"></textarea>
       </div>
        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo3">answer yourself</button>
        
        <div id="demo3" class="collapse">
        <div class="form-group">
            <label for="comment"></label>
            <textarea class="form-control" rows="1" name="thread_answer" id="comment"></textarea>
        </div>
  </div>
        </div>
        <div class="modal-footer">
            <input type="submit" formaction="thread_db_post.jsp" value="submit" class="btn btn-info">
            
        </div>
      </form>
        </div>
        
    </div>
  </div>

			

			<br>
<%
     
     if(var != null && !var.isEmpty()){
            try
            {   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
            PreparedStatement st=con.prepareStatement("select user_email,thread_ques,location from thread_all where location=?");
            //st.setString(1,userlocation1);
            st.setString(1,var);
            ResultSet rs;
            rs=st.executeQuery();
            while(rs.next())
            {
            %>
        <div>
            <div class="rows">
                    <div class="col-lg-12 well">
                        
                        <h4>
                        <a target="_blank" href="pass_data.jsp?id4=<%= rs.getString(2) %>"> <%=rs.getString(2) %></a>
                    <br>
                    <p class="tagline">
				submitted 
				<time title="Mon Jun 8 00:00:04 2015 UTC" datetime="2015-06-08T00:00:04+00:00" class="live-timestamp">
				10 hours ago
				</time>
				by 
				<a href="/user/user_name" class=""><%out.print(rs.getString(1));%></a>
				to 
				<a href="/city_name" class=""><%out.print(rs.getString(3));%></a>
				</p>
			</h4>
                </div>
                </div>
        <%
            }    }
            catch(Exception e)
            {   }
            
     }
        
        
        
    
     else{
            try
            {   
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe","root","");
            PreparedStatement st=con.prepareStatement("select user_email,thread_ques from thread_all where location=?");
            //st.setString(1,userlocation1);
            st.setString(1,cityselect);
            ResultSet rs;
            rs=st.executeQuery();
            while(rs.next())
            {
            %>
                <div class="rows">
                    <div class="col-lg-12 well">
                    <h3><%  out.print(rs.getString(1));     %><hr>
                      <% // session.setAttribute("posttopic",rs.getString(2));   %>
            <a target="_blank" href="pass_data.jsp?id4=<%= rs.getString(2) %>"> <%=rs.getString(2) %></a>
                        <br>
                    </h3>
                </div>
                </div>
        <%
            }
            }
            catch(Exception e)
            {
            }
     }
     %>
        
        
        
</body>	

</html>