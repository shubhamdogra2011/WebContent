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
    .user{
            margin-top:10px;
            margin-bottom:10px;
            margin-right:20px;
            margin-left:10px;
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
  font-size: xx-large;
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
  $("#navbar").load("navbar.jsp"); 
   //$("#header").load("header.html"); 
  //$("#footer").load("footer.html"); 
});
</script>

</head>
<body>
    <%@ page import="java.sql.*;"%>      
        <%   String var=request.getParameter("city");
        session.setAttribute("location",var);
        Cookie cookie = null;
        Cookie[] cookies = null;
        cookies = request.getCookies();
        cookie=cookies[1];
        String username1=cookie.getValue();
        cookie=cookies[2];
        String userid=cookie.getValue();
        %>
 <div id="navbar"></div>
			<br><br><br>
                        <center>
                            <h2><font color="red">
                                <%if(var != null && !var.isEmpty())
                                {%>
                                <%out.print(var.toUpperCase());
                                 }
                                    else{
                                      //  out.print(cityselect);
                                }%>
                                </font></h2>
                        </center>
                        <br>

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
             <label for="thread_topic"></label>
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

		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xe?autoReconnect=true&relaxAutoCommit=true","root","");

            PreparedStatement st=null,st2=null;
       int rowcount=0;
   try{
       
st=con.prepareStatement("select * from thread_all where location=?");
 st.setString(1,var);
ResultSet rs1;
rs1=st.executeQuery();
    while ( rs1.next() )
    {
        rowcount++;
    }
  
   }
     catch(Exception e)
         {
      }
   int a;
   int b;
  a=rowcount%10;
  %><h1>City score : <%out.print(rowcount);%></h1><%
  b=rowcount/10;      %>
  
  <div class="container_1" style="width:80%;">
  
  <%
  
          String pagenum1=request.getParameter("pagenum");
               
                            if(pagenum1 != null && !pagenum1.isEmpty())
                            {       }
                            else
                            {   pagenum1="1";
                            }
   
  
             int lpn=1;
                                 lpn=Integer.parseInt(pagenum1);
                                 int cpn=lpn;
                                 int upn=10;
                           

                  lpn=lpn*10-10;
                  upn=lpn+10;
     if(var != null && !var.isEmpty()){
            try
            {   
st=con.prepareStatement("select * from(select x.*,rownum as r from(select user_email,thread_ques,location,score from thread_all where location=?)x)where r>? and r<=?");
            
            //st.setString(1,userlocation1);
            st.setString(1,var);
            st.setInt(2, lpn);
            st.setInt(3, upn);            
            
            ResultSet rs;
            rs=st.executeQuery();
            while(rs.next())
            {
            %>
<table class="table table-bordered">  
    <thead>
        <tr>
            <th>
                <h3  style="color:white;" align="left">
                <a  target="_blank" href="pass_data.jsp?id4=<%= rs.getString(2) %>">  <%out.print(rs.getString(2));%>     </a>
                </h3>
            </th>
            <th>
                <a href="votes.jsp?id3=<%= rs.getString(2) %>&pagenum=<%=cpn%>&p=1&city=<%=var%>">upvote</a>
            </th>
                
        </tr>        
  </thead>
 
      <%                              try{               
 
st2=con.prepareStatement("select user_email,thread_ans from thread_ans where thread_ques=?");
 
                //st.setString(1,userlocation1);
                st2.setString(1,rs.getString(2));
                ResultSet rs1;
 
                rs1=st2.executeQuery();
                while(rs1.next())
                {%>
                <!-- post 1 -->
<tbody>       
    <tr>
        <td>
            <p>
                <%out.print(rs1.getString(2));%>
            </p>
            
        </td>
        <td>
                    <a href="#">upvote</a>
        </td>
    </tr>
</tbody>
      <%
                }
                }
                catch(Exception e1)
                {
                }
      
  %>    

</table>       
      
            
        <%
            }    }
            catch(Exception e)
            {   }
            
     }
        
        
        
    
     else{
            try
            {   
            
            st=con.prepareStatement("select user_email,thread_ques from thread_all where location=?");
            //st.setString(1,userlocation1);
            //st.setString(1,cityselect);
            ResultSet rs;
            rs=st.executeQuery();
            while(rs.next())
            {
            %>
                <div class="rows">
                    <div class="col-lg-12 well">
                    <h3><%  out.print(rs.getString(1));     %>
                      <% // session.setAttribute("posttopic",rs.getString(2));   %>
            <a target="_blank" href="pass_data.jsp?id4=<%= rs.getString(2) %>"> <%=rs.getString(2) %></a>
                        <br>
                    </h3><hr>
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

</div>



<ul id="pagination-demo" class="pagination">
    

  <%
           if(a==0){                     
  for(int i=1;i<=b;i++){%>
  <li><a href="city_threads.jsp?pagenum=<%=i%>&city=<%=var%>"><%out.print(i);%></a></li>
  <%  }}else{
       for(int i=1;i<=b+1;i++){%>
  <li><a href="city_threads.jsp?pagenum=<%=i%>&city=<%=var%>"><%out.print(i);%></a></li>
  <%  }    
         }  %>

</ul>        
        
        
</body>	

</html>