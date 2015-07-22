<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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

<!-- google -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="229779618995-k6bvdb3uvjdsd4vc40equ5f5i43rfa1j.apps.googleusercontent.com">

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



</head>
<body>








	




    <%@ page import="java.sql.*"%>
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
 
    <div class="collapse navbar-collapse" id="navbar-collapse" >
        
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">places<span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a target="_self" href="city_threads.jsp?id4=ahemdabad">AHEMDABAD</a></li>
            <li><a target="_self" href="city_threads.jsp?id4=delhi">DELHI</a></li>
            <li><a target="_self" href="city_threads.jsp?id4=chandigarh">CHANDIGARH</a></li>
          </ul>
        </li>
        <li><a href="#feedback">Feedback</a> 
  	<li><a href="#gallery">Gallery</a> 
  	<li><a href="#features">Features</a> 
  	<li><a href="#faq">Faq</a> 
  	<li><a href="#contact">ContactUs</a> 
     </ul>
                

			
     <button type="button" class="btn btn navbar-btn navbar-right" data-toggle="collapse" data-target="#demo" id="login">SIGN-UP</button>
                
     </div>
       
            
     
 

       
  <div id="demo" class="collapse">
  
      <br>
      <br>
      <br>
    
    <div class="row">

			
			<div class=" col-lg-4 ">
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
						   
						   FB.api('/me', {fields: 'id,name,email'}, function(response) {
						   	document.getElementById("login").innerHTML = response.name;
						    	}, true);
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
					   
					    FB.api('/me', {fields: 'id,name,email'}, function(response) {
						   	document.getElementById("login").innerHTML = response.name;
						    	});
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
			<!-- <a class="btn btn-block btn-social btn-google" style="background-color:#dd4b39;">
    		<i class="fa fa-google"></i> Sign in with Google
    		</a>
    		-->
    		<div class="g-signin2" data-onsuccess="onSignIn" id ="google">
    		
    		</div>
    	<script src="google.js"></script>
    		    		 <%
						   Cookie cookie = null;
						   Cookie[] cookies = null;
						   // Get an array of Cookies associated with this domain
						   cookies = request.getCookies();
						   if( cookies != null ){
						      out.println("<h2> Found Cookies Name and Value</h2>");
						      for (int i = 1; i < cookies.length; i++){
						         cookie = cookies[i];
						         out.print("Name : " + cookie.getName( ) + ",  ");
						         out.print("Value: " + cookie.getValue( )+" <br/>");
						      }
						  }else{
						      out.println("<h2>No cookies founds</h2>");
						  }
						%>
    		 
    		<a href="#" onclick="signOut();" style="visibility:hidden" id="g_signout" >Sign out</a>
				
				
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
 			 
 			 
 			 
 			 

			
			

<!-- ------------------------------------------------- -->

   		

<!-- ------------------------------------------------- -->

      

  
  
  
  
  					<div class=" col-lg-8">
 <form >
                    <div class="row">
                            <div class="form-group col-lg-5 ">
                               <label for="user-name">    Name:</label>
                                <input type="text" class="form-control"  id="user-name" name="user_name" placeholder="ex. amit rajput" >
                                
                            </div>
                            
                            <div class="form-group col-lg-5 ">
                                <label for="user-email">    Email Address:</label>
                                <input type="email" class="form-control" id="user-email" name="user_email" placeholder="ex. abc@gmail.com">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-lg-5">
                                <label for="user-password">    Password:</label>
                                <input type="password" class="form-control" id="user-password" name="user_password" placeholder="enter your password">
                                <label for="user-password"> Confirm Password:</label>
                                <input type="password" class="form-control" id="user-password" name="user_password_confirm" placeholder="enter your password">
                        </div>
                    </div>
                    <div class="row">
                            <div class="form-group col-lg-5">
                                <label for="user-age">    Enter Age:</label>
                                <input type="number" class="form-control" name="user_age" placeholder="enter your age">
                        </div>
                            
                        <div class="form-group col-lg-5">
                                <label for="user-city">    City:</label>
                                <input type="text" class="form-control" name="user_city" placeholder="enter your city">
                        </div>
                    </div>
                    <div class="row">
                            <div class="form-group col-lg-5">
                                <label for="user-dob color=white">    Date of Birth:</label>
                                <input type="text" class="form-control" name="user_dob" placeholder="enter your Date of birth">
                            </div>
                    </div>
                  <center>
                      <div class="form-group">
                          
                            <input formaction="user_signup_db.jsp" class=" btn btn-info" type="submit" value="sumbit">
                      </div>
                  </center>
            </form>
					</div>
	</div>
	</div>
				
</nav>



</body>
</html>