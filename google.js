function onSignIn(googleUser) {
    			  var profile = googleUser.getBasicProfile();
    			  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    			  console.log('Name: ' + profile.getName());
    			  console.log('Image URL: ' + profile.getImageUrl());
    			  console.log('Email: ' + profile.getEmail());
    			
    			  
    			 
    			 var a= encodeURI (profile.getName());//encodes special characters, except: , / ? : @ & = + $ #
    			 document.cookie="username="+ a;
    			 var b=encodeURIComponent(profile.getEmail()); //encodes special characters. In addition, it encodes the following characters: , / ? : @ & = + $ #
    			  document.cookie="email="+ b;
    			  
    			 // var username=profile.getName();
    			  //var email=profile.getEmail();
    			 // Cookies.set('username', ''+profile.getName());
    			 // Cookies.set('email', ''+profile.getEmail());
     			  
    			 // window.open("home.jsp","_self");
    			 //  window.open("test.jsp","_self");
    			 
    			
    			  $.post("cookie_db.jsp" //fetches the requested page(background process)
    					  );
    		

    				
    			  
    				//document.getElementById("google").innerHTML = profile.getName();
    				
    					   document.getElementById('g_signout').style.visibility = 'visible';
    					   document.getElementById('google').style.visibility = 'hidden';
    					 //  document.getElementById("name").innerHTML = profile.getName();
    					   var str =profile.getName();;
    					    var res = str.toUpperCase();
    					    document.getElementById("name").innerHTML = res;
    					   
    					   document.getElementById('name').style.visibility = 'visible';
    					   
    			}

	
function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    var a=null;
    auth2.signOut().then(function () {
      console.log('User signed out.');
      document.cookie="email="+a;
      document.cookie = "username="+a;
     // Cookies.remove('email');
      //Cookies.remove('username');
   window.open("home.jsp","_self");
  // document.getElementById('google').style.visibility = 'visible';  
    });
  }

