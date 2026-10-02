<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	     <link rel="stylesheet" type="text/css" href="css\bootstrap.css">
       <link rel="stylesheet" type="text/css" href="css\user_nav.css ">
       <link rel="stylesheet" type="text/css" href="css\user_dashboard.css">
</head>
<body>
<form action="user_dashboard" method="post">
<div class="navbar">
         <nav>
            <li><label class="learn">E-Learning</label></li>
         <li><a href="user_dashboard.jsp">Dashboard</a></li>
         <li><a href="user_register.jsp">Register</a></li>
          <li><a href="user_course.jsp">Courses</a></li>
          <li><a href="user_coursedetails.jsp">Coursedetails</a></li>
         
          <li><a href="user_profile.jsp">Profile</a></li>
          <li><a href="user_quiz.jsp">Quiz</a></li>
          <li><a href="user_result.jsp">Result</a></li>
          <li><a href="user_feedback.jsp">Feedback</a></li>
           <li><a href=user_coursebuy_info.jsp>buy_details</a></li>
          <li><a href="index.jsp">Log out</a></li>
      </nav>
    </div>





	<p class="abc1">MaxSkills.<p>
	<label class="lab">Online Learning Platform Dashboard</label>
      <div class="row">
      	<div class="col-sm-6">
    <div class="add">
 	 <div class="row">
    <div class="col-sm-6">
       <p class="add1">Join Now And Get Discount <br> Voucher Up To 20%</p>
       <p class="add2"> for more informtion search for more courses<br> and fast apply now..!</p> 
   </div>
    <div class="col-sm-6">
     <img src="images\student.png" class="img">
    </div>
     </div>
 	</div>
        <br>
        <div class="row">
        	<div class="col-sm-1">
        	</div>
        	<div class="col-sm-3">
        		 <div class="box">
        		 	 <div class="box1" ><br><br><br>
        		 	 	<p class="font">1500<br>Active Student</p>
        		 	 	
        		 	 </div>
        		 	
        		 </div>
        	</div>
        	<div class="col-sm-3">
        		<div class="box" style="background-color:#EDD568">
        		 	 <div class="box1" ><br><br><br>
        		 	 	<p class="font">903<br>coming courses</p>
        		 	 </div>
        		 </div>
        	</div>
        	<div class="col-sm-3">
        		<div class="box"style="background-color:#3D414A">
        		 	 <div class="box1"><br><br><br>
        		 	 	<p class="font">1112<br>Learning courses</p>
        		 	 	
        		 	 </div>
        		 	 
        		 </div>
        		 <div class="col-sm-3">
        	</div>
        	</div>
        </div>
    </div>

      <div class="col-sm-6">
      <img  class="img1" src="images\dashboard.png">
      </div>
</div>
</form>
</body>
</html>