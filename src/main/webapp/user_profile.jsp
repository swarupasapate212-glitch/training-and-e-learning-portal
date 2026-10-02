<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css\bootstrap.css">

	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css\user_profile.css">
	 <link rel="stylesheet" type="text/css" href="css\user_nav.css ">
</head>
<body>
<form action="user_profile" method="post">
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


   
      <div class="main">
		<div class="row">
			<div class="col-sm-4">
				<div class="div">
					<img  class="img" src="images\profile1.png">
				</div><br><br><br><br><br>
				
					
					<button style="background-color:#2222B3;border-radius: 10px; margin-left:90px;color:white;"name="submit">Connet to Linkdin</button>
			</div>
			<div class="col-sm-8">
				<h1 style="font-family:Algerian;">My Profile</h1><br><br>
				<div class="row">
					<div class="col-sm-6">
				<label>First Name:</label><br>
				<label class="box">Swarupa</label><br><br><br>
				<label>Address:</label><br>
				<label class="box">At post Kande,tal.shirala</label><br><br><br>
				<label>Course name:</label><br>
				<label class="box">Soft skills & leardership Training</label><br><br><br>
			</div>
			<div class="col-sm-6">
				<label>Last Name:</label><br>
				<label class="box">Sapate</label><br><br><br>
				<label>Contact number:</label><br>
				<label class="box">9763875128</label><br><br><br>
				<label>Email:</label><br>
				<label class="box">swarupasapate212@gmail.com</label><br><br><br>
			</div>

			</div>
		</div>
	</div>
	
</div>
</form>
</body>
</html>