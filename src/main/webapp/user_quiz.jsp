<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
<link rel="stylesheet" type="text/css" href="css\user_quiz.css">
 
	   <link rel="stylesheet" type="text/css" href="css\user_nav.css ">
</head>
<body>

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

   <form action="user_quiz" method="post">
	<center>
	<div class="title">
<h2 class="h2">Quiz</h2>
</div>
</center>
<div class="row">
	<div class="col-sm-3">
	</div>
		<div class="col-sm-6"><br><br>
<p style="text-decoration: bold;">Q1: What is a primary benefit of using educational technology in distance learning?
</p><br>
<input type="radio" name="option" style="text-decoration: bold;"> Reducing the need for instructors.<br>
<input type="radio" name="option" style="text-decoration: bold;"> Ensuring cost-effectiveness and facilitating varied resources.<br>
<input type="radio" name="option" style="text-decoration: bold;"> Limiting learner interaction.<br>
<input type="radio" name="option" style="text-decoration: bold;"> Making learning more expensive.<br><br>
<p style="text-decoration: bold;">Q2: Which of these describes a virtual classroom?
</p><br>
<input type="radio" name="option"style="text-decoration: bold;"> A physical room with computers.<br>
<input type="radio" name="option"style="text-decoration: bold;"> An online space for real-time interaction via video conferencing and chat.<br>
<input type="radio" name="option"style="text-decoration: bold;"> A self-paced module with no live elements.<br>
<input type="radio" name="option"style="text-decoration: bold;"> A simple text document.<br><br>
<p style="text-decoration: bold;">Q3: E-learning encompasses several methods. Which are included?
</p><br>
<input type="radio" name="option"style="text-decoration: bold;"> Computer-based Instruction (CBI)<br>
<input type="radio" name="option"style="text-decoration: bold;"> Web-Based Training (WBT)<br>
<input type="radio" name="option"style="text-decoration: bold;"> Internet-Based Training (IBT)<br>
<input type="radio" name="option"style="text-decoration: bold;"> All of the above.<br><br>
<p style="text-decoration: bold;">Q4: A strategy that combines online learning with traditional classroom methods is known as:
</p><br>
<input type="radio" name="option"style="text-decoration: bold;"> Flipped Learning<br>
<input type="radio" name="option"style="text-decoration: bold;"> Blended Learning<br>
<input type="radio" name="option"style="text-decoration: bold;"> Synchronous Learning<br>
<input type="radio" name="option"style="text-decoration: bold;"> Asynchronous Learning<br><br>
</div>
<div class="col-sm-3">
</div>
</div>
</form>
</body>
</html>