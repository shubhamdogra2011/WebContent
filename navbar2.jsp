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

<!--<script src="js-cookie-master/src/js.cookie.js"></script>-->


	
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
                

			
			<div class="navbar-right">
         		<ul class="nav navbar-nav">
         		<li><div class="g-signin2 navbar-btn navbar-right" data-onsuccess="onSignIn" id ="google">
    		
    			</div></li>
    			<script src="google.js"></script>
    	
    		    		 
				
				
							
        
         
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" id="name" style="visibility:hidden;font-weight:bold; " ><span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a target="_self" href="navbar2.jsp">Profile</a></li>
            <li><a target="_self" href="city_threads.jsp?id4=delhi">Help</a></li>
          
          </ul>
        </li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</li>
        <li ><button type="button" class="btn btn navbar-btn " onclick="signOut();" style="visibility:hidden"  id="g_signout" class="navbar-btn navbar-right">Sign out</button></li>
      
        
     </ul>
				
        	</div>
				
 								</div>
	</div>
	</div>

</div>
				
</nav>



</body>
</html>