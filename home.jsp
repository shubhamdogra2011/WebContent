<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<meta charset="utf-8">
	<title>Home</title>
	<meta name="description" content="Hello World">

	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">

        
	<!-- for font family "Raleway"-->
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

	<!-- for down arrow icon -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- facebook login icons -->
	<link rel="stylesheet" href="bootstrap-social.css">
	
	<link rel="stylesheet" href="navbar.css">


	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script src="facebookScript.js"></script>



<!-- for down arrow icon -->

	
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
		background-color: #12222B;
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

<script> 
$(function(){
  $("#navbar").load("navbar2.jsp"); 
   //$("#header").load("header.html"); 
  //$("#footer").load("footer.html"); 
});
</script>



</head>

<body>
<%@ page import="java.sql.*"%>

<header>
		<!-- Navbar -->
 <div id="navbar"></div>

<!-- End navbar -->
			<div class="header">
				<div class="text">
					<div class="text_lg">"Incredible HooD"</div>
					<h3>Know thy City !!<br></h3>
					<br><br> <!-- if you remove some<br> from here then better add some downstairs... the total number of <br> must remain constant or else the background image fucks up. Good luck bro -->

					<a href="#container_2"><i class="fa fa-arrow-circle-down fa-5x" style="color:#ae1f32"></i></a>

					<br><br><br><br><br><br><br><br><br><br><br><br>
				
				</div> 
			</div> 
	

	<br>

<!-- start of feed -->
<div id="container_2">
			<br><br><br>
			<center>
			<div class="container_1" style="width:70%;">
			<div class="well">
			<center>
                            
	                <%
                            try{
                            	Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe?autoReconnect=true&relaxAutoCommit=true","root","");
                                        
                            
    try{
            out.print("executed 3");
            PreparedStatement st=con.prepareStatement("select user_email,thread_ques,location,score from thread_all");
            //st.setString(1,userlocation1);
            ResultSet rs;
            rs=st.executeQuery();
            while(rs.next())
            {%>
                <div class="thread" id="thread_1">
				<div class="midcol">
				
                                <a href="home.jsp?id3=<%= rs.getString(2) %>">upvote</a>
                                
				<br>
                                
				<h5 style="color:white;"><%out.print(rs.getString(4));%></h5>
				<i class="fa fa-arrow-down" style="color:white;"></i>
				</div>
			
				<div class="thumbnail" >
					<img src="http://piq.codeus.net/static/media/userpics/piq_164392_400x400.png">
				</div>

			<div class="entry" style="width:50%;">	
			<p class="title" style="color:white;">
            		<a class="title" target="_blank" href="pass_data.jsp?id4=<%= rs.getString(2) %>">  <%out.print(rs.getString(2));%>     </a></p>
			<p class="tagline">
				submitted 
				<time title="Mon Jun 8 00:00:04 2015 UTC" datetime="2015-06-08T00:00:04+00:00" class="live-timestamp">
				10 hours ago
				</time>
				by 
				<a href="/user/user_name" class=""><%out.print(rs.getString(1));%></a>
				from 
				<a href="/city_name" class=""><%out.print(rs.getString(3));%></a>
				</p>
				
				</div>
				<hr>
			</div>
<%                  }   }
                            catch(SQLException e)
                            {    out.print("exception1");     
                            out.print(e.getMessage( ));
                            }
                            %>
		</center>
        	</div>
		</div>
		</center>
</div>
         
                              <%
                 String ques=request.getParameter("id3");
           int scoreint=0;
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
            int rs=ps.executeUpdate();
            if(rs>0)
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

                         

			
	<div class="container">
            <form>
			<center>
                            <button  type="button"  class="btn btn btn-lg"  data-toggle="modal" data-target="#modal-1" id="show" >Get Started With HooD</button>
                    <br>
			<i class="fa fa-angle-double-down fa-5x"  data-toggle="modal" data-target="#modal-1" style="color:#ae1f32"></i>
			</center>
            </form>
            
		<div class="modal fade" id="modal-1">
			<div class="modal-dialog modal-lg" >
				<div class="modal-content" >

					 <div class="modal-header" >
					 	<button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-2x" ></i></button>
					 	<h3 class="modal-title" > <i class="fa fa-check-circle "></i><b>  Select a City: </b></h3> 
					 </div>

					 
					 <div class="modal-body">
					 	<div class="container">
					 	<br>

 					<div class="row">
 					<div class="col-lg-8 col-md-8 col-sm-8">
			<form action="" >
				<div class="form-group has has-feedback" >

					<!--<label for="element-1" class="control-label">This is the text of the label</label>
					<input type="text" id="element-1" class="form-control" style="width: 770px; height: 60px; font-size:14pt;">
					<span class="glyphicon glyphicon-sign form-control-feedback"></span>-->

			

					<select name="cars" id="element-1" class="form-control" style=" height: 60px; font-size:14pt;">
						<option value="Chandigarh">Chandigarh</option>
						<option value="Delhi">Delhi</option>
						<option value="Kolkata">Kolkata</option>
						<option value="Mumbai">Mumbai</option>
					</select>
				</div>
			

					</div>
				</form>

				<div class="col-lg-2">
				&nbsp; &nbsp; <button  class="btn btn btn-lg" data-toggle="modal" data-target="#modal-3" >GO!</button>
				
                			</div>
					</div>
 	
					</div> 
				</div>
			</div>
		</div>
	</div>
	
	

<!-- ------------------------------------------------- -->

<div class="modal fade" id="modal-3">
			<div class="modal-dialog modal-lg"  style="width:30%; ">
				<div class="modal-content" >

					 <div class="modal-header" >
					 	<button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-2x" ></i></button>
					 	<h3 class="modal-title" > <i class="fa fa-check-circle "></i><b>Sign In: </b></h3> 
					 </div>

					 
					 <div class="modal-body">
					 	<div class="container">

<!-- ------------------------------------------------- -->

<div class="row">

			
			<div class=" col-lg-4 col-md-4 col-sm-4">
			<a class="btn btn-block btn-social btn-facebook" style="background-color:#3b5998;" href="#" id="login-btn">
    		<i class="fa fa-facebook " ></i> Sign in with Facebook
 			 </a>
 			<script type="text/javascript">
				document.getElementById('login-btn').onclick = function() {
				 
					FB.login(function(response) {
					    
					    if (response.status === 'connected') {
						    // the user is logged in and has authenticated your
						    // app, and response.authResponse supplies
						    // the user's ID, a valid access token, a signed
						    // request, and the time the access token 
						    // and signed request each expire
						    var uid = response.authResponse.userID;
						    var accessToken = response.authResponse.accessToken;
						    window.open("city.jsp","_self");
						  //  FB.api('/me', {fields: 'id,name,email'}, function(response) {
						    //	document.getElementById("login-btn").innerHTML = response.id;
						    //	});
						  }
					    return false;
					  });
				  
				  FB.getLoginStatus(function(response) {
					  if (response.status === 'connected') {
					    // the user is logged in and has authenticated your
					    // app, and response.authResponse supplies
					    // the user's ID, a valid access token, a signed
					    // request, and the time the access token 
					    // and signed request each expire
					    var uid = response.authResponse.userID;
					    var accessToken = response.authResponse.accessToken;
					    window.open("city.jsp","_self");
						  //  FB.api('/me', {fields: 'id,name,email'}, function(response) {
						    //	document.getElementById("login-btn").innerHTML = response.id;
						    //	});
					  } else if (response.status === 'not_authorized') {
					    // the user is logged in to Facebook, 
					    // but has not authenticated your app
					  } else {
					    // the user isn't logged in to Facebook.
						 
					  }
					 }, true);
				  
				}
			</script>
			
 			 <br>
 			
 			 <h4 style="color:white">
 			 --------------------or--------------------
 			 </h4>
 			 <br>
			<a class="btn btn-block btn-social btn-google" style="background-color:#dd4b39;">
    		<i class="fa fa-google"></i> Sign in with Google
    		
 			 </a>
 			 <form role="form">
 			 <br>
 			 <h4 style="color:white">
 			 --------------------or--------------------
 			 </h4>
 			 <br>

		                <input align="center" type="email" class="form-control" name="user_email" placeholder="enter your email address">
		                <br>
		                 <input type="password" class="form-control" name="user_password" placeholder="enter your password">
		                 <br>
		                 <center> <input type="submit" formaction="user_login_check.jsp" value="Sign In" class="btn btn"></center>
		                      
		       
		       </form>
		       <center>
		       <br>
		       		<h4 style="color:white">
 			 --------------------or--------------------
 			 </h4>

		                <button class="btn  btn-lg"  data-toggle="modal" data-target="#modal-4">Sign Up</button>
		          </center>
 			 
                        </div>
 			 </div>
 			
<!-- ------------------------------------------------- -->
</div>
</div>
</div>
</div>
</div>
<!-- ------------------------------------------------- -->
<div class="modal fade" id="modal-4">
			<div class="modal-dialog modal-lg"  style="width:30%;">
				<div class="modal-content" >

					 <div class="modal-header" >
					 	<button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-2x" ></i></button>
					 	<h3 class="modal-title" > <i class="fa fa-check-circle "></i><b>Sign Up: </b></h3> 
					 </div>

					 
					 <div class="modal-body">
					 	<div class="container">

<!-- ------------------------------------------------- -->
					
				<div class="row">
					<div class=" col-lg-4 col-md-4 col-sm-4">
					<form>
						<input type="text" class="form-control" name="full_name" placeholder="Enter Your Full Name">
						<br>
						<input type="email" class="form-control" name="email" placeholder="Enter Your Email-Address ">
						<br>
						<input type="password" class="form-control" name="pass" placeholder="Enter Password">
						<br>
					</form>
						<center>
						<button class="btn"> Register</button>
						</center>

					</div>
				</div>


<!-- ------------------------------------------------- -->

</div>
</div>
</div>
</div>
</div>

					</div>
					</div>
 			</div>
			</div>
	</div>	
</body>	

</html>