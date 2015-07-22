<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>User wall with sidebar show hide - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <style>
          
.jumbotronTransp {
 padding: 60px;
 margin-bottom: 60px;
 font-size: 21px;
 font-weight: 200;
 line-height: 2.1428571435;
 color: inherit;
 background-color: #3399FF;
 
      </style>
    <style type="text/css">
     body {
  background: #eee;
}
 
.post-date{
    background:#eee;
    color:#31b0d5;
}
 
.toggled {
    position: absolute;
    margin-right: -250px;
}
 
#profileCol .profile-sidebar{
  min-height: 210px;
}
 
.hr-sep{
    border:1px solid  #eee;  
}
 
.profile {
  margin: 20px 0;
}
 
.profile-sidebar {
  padding: 20px 0 10px 0;
  background: #fff;
}
 
.profile-userpic img {
  float: none;
  margin: 0 auto;
  width: 50%;
  height: 50%;
  -webkit-border-radius: 50% !important;
  -moz-border-radius: 50% !important;
  border-radius: 50% !important;
}
 
.profile-usertitle {
  text-align: center;
  margin-top: 20px;
}
 
.profile-usertitle-name {
  color: #5a7391;
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 7px;
}
 
.profile-userbuttons {
  text-align: center;
  margin-top: 10px;
}
 
.profile-userbuttons .btn {
  text-transform: uppercase;
  font-size: 11px;
  font-weight: 600;
  padding: 6px 15px;
  margin-right: 5px;
}
 
   
.profile-usermenu {
  margin-top: 30px;
}
 
.profile-usermenu ul li {
  border-bottom: 1px solid #f0f4f7;
}
 
.profile-usermenu ul li:last-child {
  border-bottom: none;
}
 
.profile-usermenu ul li a {
  color: #93a3b5;
  font-size: 14px;
  font-weight: 400;
}
 
.profile-usermenu ul li a i {
  margin-right: 8px;
  font-size: 14px;
}
 
.profile-usermenu ul li a:hover {
  background-color: #fafcfd;
  color: #5b9bd1;
}
 
.profile-usermenu ul li.active {
  border-bottom: none;
}
 
.profile-usermenu ul li.active a {
  color: #5b9bd1;
  background-color: #f6f9fb;
  border-left: 2px solid #5b9bd1;
  margin-left: -2px;
}
 
.profile-content {
  padding: 20px;
  background: #fff;
  min-height: 410px;
}
 
.btn {
    border-radius: 0;
    border: 0;
    border-bottom: 4px solid #CCCCCC;
    margin:0;
    -webkit-box-shadow: 0 5px 5px -6px rgba(0,0,0,.3);
       -moz-box-shadow: 0 5px 5px -6px rgba(0,0,0,.3);
            box-shadow: 0 5px 5px -6px rgba(0,0,0,.3);
}
.btn .btn-block:active, .btn .btn-lg:active {
    -webkit-box-shadow: inset 0 3px 3px -5px rgba(0,0,0,.3);
       -moz-box-shadow: inset 0 3px 3px -5px rgba(0,0,0,.3);
            box-shadow: inset 0 3px 3px -5px rgba(0,0,0,.3);
}
.btn-default {
    color: #555;
    background-color: #f9f9f9;
    border-color: #cacaca;
    text-shadow: 1px 1px 0 #f5f5f5;
}
.btn-default:hover, .btn-default:focus {
    background-color: #f4f4f4;
    border-color: #bebebe;
}
.btn-success {
    background-color: #80d752;
    border-color: #61be26;
    text-shadow: 1px 1px 0 #5fdb34;
}
.btn-success:hover, .btn-success:focus {
    background-color: #75cd53;
    border-color: #53aa27;
}
.btn-info {
    background-color: #39b3d7;
    border-color: #348fd2;
    text-shadow: 1px 1px 0 #238ed5;
}
.btn-info:hover, .btn-info:focus {
    background-color: #45abcd;
    border-color: #347abe;
}
.btn-warning {
    background-color: #FEAF20;
    border-color: #d79a34;
    text-shadow: 1px 1px 0 #db9e34;
}
.btn-warning:hover, .btn-warning:focus {
    background-color: #f5a620;
    border-color: #cd9034;
}
.btn-danger {
    background-color: #d73814;
    border-color: #be0000;
    text-shadow: 1px 1px 0 #ac2925;
}
.btn-danger:hover, .btn-danger:focus {
    background-color: #cd3714;
    border-color: #aa0000;
}
.btn-primary {
    background-color: #4274d7;
    border-color: #4d5bbe;
    text-shadow: 1px 1px 0 #232bd5;
}
.btn-primary:hover, .btn-primary:focus {
    background-color: #426acd;
    border-color: #4f56aa;
}
.btn-magick {
    color: #fff;
    background-color: #bb39d7;
    border-color: #9a00cd;
    text-shadow: 1px 1px 0 #9823d5;
}
.btn-magick:hover, .btn-magick:focus {
    color: #fff;
    background-color: #b13acd;
    border-color: #8600b9;
}
.btn-pressure {
    position: relative;
    margin-bottom: 0;
}
.btn-pressure:focus {
    -moz-outline-style:none;
         outline:medium none;
}
.btn-pressure:active, .btn-pressure.active {
    top: 4px;
    border: 0;
    position: relative;
}
.btn-sensitive:active, .btn-sensitive.active {
    top: 1px;
    margin-top: 4px;
}
    </style>
</head>
<body>
<%@ page import="java.sql.*;"%>
<%
                String postques1=(String)session.getAttribute(("postques"));
 
                try{
 
                	Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe?autoReconnect=true&relaxAutoCommit=true","root","");
                    
                PreparedStatement st=con.prepareStatement("select * from thread_all where thread_ques=?");
                //st.setString(1,userlocation1);
                st.setString(1,postques1);
                ResultSet rs;
                rs=st.executeQuery();
                if(rs.next())
                {%>
 

                <%
 

                %>
     <div class="row">
        <div class="col-lg-10 col-lg-push-1">
                <div class="jumbotronTransp">
                    
                    <div align="center"> <font color="white">
                        <h1><%out.print(rs.getString(4));%></h1>  </font>    
</div> 
</div>
</div> 
</div>  
                
                <div class="container">
                    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button"></div>
                    
                    
                    
                    
                    
            <h2> <span class="glyphicon glyphicon-pencil"></span>  <%out.print(rs.getString(2));%></h2></div>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="row">
    <div class="col-lg-8 col-lg-push-1">
    <div class="row profile">
     <div class="col-md-3" id="profileCol">
   <div class="profile-sidebar">
    <div class="profile-userpic">
     <img src="http://bootdey.com/img/Content/User_for_snippets.png" class="img-responsive" alt="">
    </div>
    <div class="profile-usertitle">
     <div class="profile-usertitle-name">
      Clark rodriguez
     </div>
    </div>
    
       
   </div>
  </div>
  <div class="col-md-9" id="contentCol">
            <div class="profile-content">
                <div class="row hidden-xs hidden-sm">
                    <a href="#" class="btn btn-info" id="toggle-link">
                        <i class="fa fa-arrow-left"></i>
                        asked by
                    </a>
                    <hr class="hr-sep">
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <textarea class="form-control" rows="3" placeholder="Write an idea..."></textarea>  
      <br>
                                                <form>
<input type="submit" class="btn btn-success" value="Add" formaction="demo.jsp">
                                                </form>
                    </div>
     
                </div>
                <hr>
     <%
                }
 
                }  catch(Exception e)
                                {
 
                                }
                                %>
 
                                 <%
                                    try{               
 
                                    	Class.forName("com.mysql.jdbc.Driver");
                                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe?autoReconnect=true&relaxAutoCommit=true","root","");
                                        
                PreparedStatement st=con.prepareStatement("select thread_ans from thread_ans where thread_ques=?");
 
                //st.setString(1,userlocation1);
                st.setString(1,postques1);
                ResultSet rs1;
 
                rs1=st.executeQuery();
                while(rs1.next())
                {%>
                <!-- post 1 -->
                <div class="row">
                    <div class="col-md-2">
                        <img src="http://bootdey.com/img/Content/user_3.jpg" class="img-responsive  img-circle">
                    </div>
                    <div class="col-md-10">
                     <div class="row post">
                    <div class="col-md-12">
                   <p> <span class="glyphicon glyphicon-user"></span>username</p>
       <p> <span class="glyphicon glyphicon-time"></span>time </p>
       
       <p>
       
       <%out.print(rs1.getString(1));%>
       </p>
                                                        <br>
                                                        <hr>
                   
                    </div>
                  </div>
              </div>
             </div>
      <%
                }
                }
                catch(Exception e1)
                {
                }
                 %>
                <hr>                
                
                 
            </div>
  </div>
 </div>
</div>
                  <div class="col-lg-2 col-lg-push-1">
  <h2>Trending Ques</h2>
  <div class="panel panel-default">
    <div class="panel-body">
<h4><a href="#"> Question </a></h4>
<h4><a href="#"> Question </a></h4>
<h4><a href="#"> Question </a></h4>
 

</div>
  </div>
</div>
</div>
                
                
                <div class="container-fluid">
  <div class="page-header">
      <h2> <div align="center"> posts you may also like </div> </h2>
  </div>
 <div class="container-fluid">
  
  <div class="row">
    <div class="col-sm-4" style="background-color:lavender;"> POST
</div>
    <div class="col-sm-4" style="background-color:lavenderblush;">POST</div>
    <div class="col-sm-4" style="background-color:lavender;">POST</div>
  </div>
</div>    
</div>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">
                    
 
                    
$(function(){
    $("#toggle-link").click(function(e) {
        e.preventDefault();
        $("#profileCol").toggleClass("hidden");
        if($("#profileCol").hasClass('hidden')){
            
            $("#contentCol").removeClass('col-md-9');
            $("#contentCol").addClass('col-md-12 fade in');
            $(this).html('answers <i class="fa fa-arrow-right"></i>');
        }else {
            $("#contentCol").removeClass('col-md-12');
            $("#contentCol").addClass('col-md-9');
            $(this).html('<i class="fa fa-arrow-left"></i> Asked by');
        }
    });
    $('.tip').tooltip();
});
                                    
</script>
</body>
</html>
