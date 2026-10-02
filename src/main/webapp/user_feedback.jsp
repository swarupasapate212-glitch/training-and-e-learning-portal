<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css\bootstrap.css">

	  <link rel="stylesheet" type="text/css" href="css\user_feedback.css">
	   <link rel="stylesheet" type="text/css" href="css\user_nav.css ">
</head>
<body>
<form action="user_feedback" method="post">
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
<div class="box">
		<div class="box1">
			<div class="row">
				<div class="col-sm-6">
					<br><br>
					 <h3 class="h">Online course feedback</h3>
				</div>
				<div class="col-sm-6">
					<img class="img"src="images\stars_only.png">
				</div>		
			</div>
      </div><br><br>
      <h4 style="font-weight:bold; margin-left: 10px;">Please rate your overall course impression:</h4>
      <div class="stars" style="rating: 4.2;" aria-label="Rating of this product is 4.2 out of 5.">
  ★★★★★
</div><br><br>
<p style="margin-left:10px ;font-weight: bold;">Were the course material is accurate and useful?</p>
<input type="radio" name="useful" value="yes" style="margin-left:10px;font-weight:bold ;">yes<br>
<input type="radio" name="useful" value="not really"style="margin-left:10px;font-weight:bold ;">Not really<br>
<input type="radio" name="useful" value="no"style="margin-left:10px;font-weight:bold ;">No<br><br>
<p style="margin-left:10px; font-weight: bold;">Please rate how helpful was the instructor?</p><br>
<input type="radio" name="instructor" value="yes"style="margin-left:10px;font-weight:bold ;">yes<br>
<input type="radio" name="instructor" value="no"style="margin-left:10px;font-weight:bold ;">Not really<br>
<button class="btn" name="submit" value="SEND FEEDBACK">Submit</button>
	</div>
	</form>
</body>
</html>