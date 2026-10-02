<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quiz</title>
	<link rel="stylesheet" type="text/css" href="css\bootstrap.css">

	<link rel="stylesheet" type="text/css" href="css\admin_quiz.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
	<style><%@ include file="css/admin_quiz.css"%></style>
</head>
<body>
<form action="admin_managequiz" method="post">
	<div class="navbar">
      <nav>
     <li><label class="learn">E-Learning</label></li>
         <li><a href="admin_dashboard.jsp">Dashboard</a></li>
         <li><a href="admin_course.jsp">Course</a></li>
          <li><a href="admin_managecourse.jsp">ManageCourse</a></li>
          <li><a href="admin_managecontent.jsp">Managecontent</a></li>
          <li><a href="admin_managequiz.jsp">Managequiz</a></li>
          <li><a href="admin_manageusers.jsp">Manageusers</a></li>
           <li><a href="admin_register.jsp">Register</a></li>
           <li><a href=admin_contactus.jsp>Contact_us</a></li>
           <li><a href=admin_coursebuy_details.jsp>buy_detail</a></li>
          <li><a href="admin_report.jsp">Report</a></li>
          <li><a href="index.jsp">Log out</a></li>
         
      </nav>
      
    </div>
	<div class="box">
    <center><h1>Add Quiz</h1></center><br><br><br>
    
    <div class="row">
         <div class="col-sm-6">
         <br>
         <label>Course Name:</label>
         </div>
          <div class="col-sm-6">
          <br>
          <input class="text" type="text" name="course_name">
         </div>
         </div>
         
          <div class="row">
           
         <div class="col-sm-6">
           <br><br>
         <label>Question no:</label>
         </div>
          <div class="col-sm-6">
          <br>
        <input class="text" type="text" name="questionno">
         </div>
         </div>
         

          <div class="row">
         <div class="col-sm-6">
         <br><br>
      <label>Question Name:</label>
         </div>
          <div class="col-sm-6">
          <br>
<input class="text" type="text" name="questionname">
         </div>
         </div>
         
         
          <div class="row">
         <div class="col-sm-6">
         <br><br>
       <label>Option 1:</label>
         </div>
          <div class="col-sm-6">
           <br>
<input class="text" type="text" name="option1">
         </div>
         </div>
         
          <div class="row">
         <div class="col-sm-6">
         <br><br>
       <label>Option 2:</label>
         </div>
          <div class="col-sm-6">
           <br>
<input class="text" type="text" name="option2">
         </div>
         </div>
         
          <div class="row">
         <div class="col-sm-6">
         <br><br>
       <label>Option 3:</label>
         </div>
          <div class="col-sm-6">
           <br>
<input class="text" type="text" name="option3">
         </div>
         </div>
         
          <div class="row">
         <div class="col-sm-6">
         <br><br>
       <label>Option 4:</label>
         </div>
          <div class="col-sm-6">
           <br>
<input class="text" type="text" name="option4">
         </div>
         </div>
         
          <div class="row">
         <div class="col-sm-6">
         <br><br>
       <label>Correct Answer:</label>
         </div>
         <div class="col-sm-6">
           <br>
<input class="text" type="text" name="Correct Answer">
         </div>
         </div>
         
      <div class="row">
      	<div class="col-sm-6">
      		<button class="login" name="submit" value="Submit">Submit</button>
      	</div>
      	<div class="col-sm-6">
      		<button class="login" name="submit" value="Submit">Cancal</button>
      	</div>
      </div>
</div>
</form>
</body>
</html>