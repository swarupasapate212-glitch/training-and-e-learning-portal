<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Registration</title>
	 <link rel="stylesheet" type="text/css" href="css\bootstrap.css">

	<link rel="stylesheet" type="text/css" href="css\user_register.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
</head>
<body>
<form action="user_register" method="post">
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
    <div class="row">
		<div class="col-sm-3">
		</div>
		<div>
		<div class="col-sm-6">
			<div class="new">
                <div class="new1">
                	<h1 style="font-family: Algerian;text-align: center;">Registration Form</h1>
                </div><br>
                <center>
             <label>Name:</label><br>
            <input class="box" type="text" name="name" placeholder="Enter your full name"><br><br>
            <label>Qualification:</label><br>
            <input class="box" type="text" name="name1" placeholder="Enter your Qualification"><br><br>
            <label>Contact Number:</label><br>
            <input class="box" type="text" name="name2" placeholder="Enter your Number"><br><br>
            <label>Address:</label><br>
            <input class="box" type="text" name="name3" placeholder="Add your Address"><br><br>
            <label>Email:</label><br>
            <input class="box" type="text" name="name4" placeholder="Enter your Email"><br><br>
           
            <br><br>
            <button style="background-color:#42E3BF;border-radius: 5px;" name="submit" value="submit">Submit</button>
        </center>
        </div>


			</div>
		</div>
		<div class="col-sm-3">
			</div>
</div>
</form>
</body>
</html>