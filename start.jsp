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
	
	<link rel="stylesheet" href="css.css">


	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="facebookScript.js"></script>

<!-- google -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="229779618995-k6bvdb3uvjdsd4vc40equ5f5i43rfa1j.apps.googleusercontent.com">


<style type="text/css">

body{
		 
		font: 14px / 1.625 "Raleway", sans-serif;
		
	}

#background {
    position: fixed;
    top:0;
    left:0;
    width: 100%;
    height: 100%;
    background-image: url('photo-1429277096327-11ee3b761c93.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    
    opacity: 0.9;
    filter:alpha(opacity=90);
}
	   
	    
</style>
	    <script>
				var terms = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam velit ipsum, interdum quis lorem eu,", 
				             " Aenean eget convallis purus, vitae sagittis tortor. Nulla mauris justo, facilisis ut sem id, ", 
				             " Nulla iaculis leo nec facilisis luctus. Suspendisse potenti. Duis sem justo, tempor non felis"];

				function rotateTerm() {
				  var ct = $("#rotate").data("term") || 0;
				  $("#rotate").data("term", ct == terms.length -1 ? 0 : ct + 1).text(terms[ct]).fadeIn()
				              .delay(2000).fadeOut(200, rotateTerm);
				}
				$(rotateTerm);
				</script>

</head>
<body >
<div>
	<div id="background"></div>
	<div class="well" style="margin:10%; ">
		<div class="row">
			<div class="col-lg-6">
				<div  align="left" style="margin:2%;text-align: center;">
					<h1 style="color:white;" id="rotate">this</h1>
				</div>
				
			</div>
			<div class="col-lg-6">
				<div  align="right" style="margin:2%;text-align: center;">
				<br>
					
					
    	<!-----------------------------------------------------					 ---------------------------- -->
    					
			
			<button  class="btn btn btn-lg" data-toggle="modal" data-target="#modal-3" style="background:#ae1f32;opacity:0.9" >SignIn/SignUp</button>
				
			
				<div class="modal fade" id="modal-3" style="opacity:0.9">
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
				
							<center>
							<div class=" col-lg-4 col-md-4 col-sm-4">
							<a class="btn btn-block btn-social btn-google" style="background-color:#dd4b39;width:90%">
				    		<i class="fa fa-google"></i> Sign in with Google
				    		
				 			 </a>
				 			 <form role="form">
				 			 <br>
				 			 <h4 style="color:white">
				 			 ------------------or------------------
				 			 </h4>
				 			 <br>
				
						                <input align="center" type="email" class="form-control" name="user_email" placeholder="enter your email address">
						                <br>
						                 <input type="password" class="form-control" name="user_password" placeholder="enter your password">
						                 <br>
						                  <input type="submit" formaction="user_login_check.jsp" value="Sign In" class="btn btn" style="width:50%;">
						                      
						       
						       </form>
						       <center>
						       <br>
						       		<h4 style="color:white">
				 			 ------------------or------------------
				 			 </h4>
				
						                <button class="btn  btn-lg"  data-toggle="modal" data-target="#modal-4" style="width:90%;">Sign Up</button>
						          </center>
				 			 
				                        </div>
				                        </center>
				 			 </div>
				 			
				<!-- ------------------------------------------------- -->
				</div>
				</div>
				</div>
				</div>
				</div>
				<!-- ------------------------------------------------- -->
				<div class="modal fade" id="modal-4" style="opacity:0.9">
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
				
	   						
    		<!-------------------------------------------------					 --------------------------------- -->
    	
    	<br><br>
    	 <h4 style="color:white"><b>--------------------or--------------------</b></h4>
    	<br><br>
    	<center>
    <!-- 	<div style="border:5px solid white; width:70%;">  -->
    	<div style="opacity:0.9; width:70%;">
    			<form action="" >
					<div class="form-group has has-feedback" style="width:60%;border:5px solid #ae1f32; " >
					<label for="element-1" class="control-label"><h4 style="color:#ae1f32"><b>Choose:</b></h4></label>
						<select name="cars" id="element-1" class="form-control" style=" height: 40px; font-size:14pt;background-color:rgba(0, 0, 0, 0);border: none;
    outline:none;">
						<option value="Chandigarh" >Chandigarh</option>
						<option value="Delhi">Delhi</option>
						<option value="Kolkata">Kolkata</option>
						<option value="Mumbai">Mumbai</option>
						</select>
					</div>
				</form>			
    	
    	
    	
    			
    			<button  class="btn btn btn-lg"  style="background:#ae1f32; " >& Get Started</button>
    	<!-- </div> -->
    	</div>
    	</center>	
    		
    			
				</div>
			
			</div>
		</div>
		
		
	</div>
</div>


<div >	

	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
</body>
</html>