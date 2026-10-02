<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
<link rel="stylesheet" type="text/css" href="css\user_result.css ">
</head>
<body>
<form action="user_result" method="post">
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

<div class="container">
   <center> <h1>Student Learning Report</h1></center>

    <div class="cards">
        <div class="card">
            <h2>5</h2>
            <p>Enrolled Courses</p>
        </div>
        <div class="card">
            <h2>3</h2>
            <p>Completed Courses</p>
        </div>
        <div class="card">
            <h2>82%</h2>
            <p>Average Score</p>
        </div>
        <div class="card">
            <h2>2</h2>
            <p>Certificates Earned</p>
        </div>
    </div>

    <!-- Table Section -->
    <table>
        <tr>
            <th>Course Name</th>
            <th>Progress</th>
            <th>Quiz Score</th>
            <th>Status</th>
        </tr>
        <tr>
            <td>Industry training</td>
            <td>100%</td>
            <td>88%</td>
            <td>Completed</td>
        </tr>
        <tr>
            <td>Skills & training </td>
            <td>75%</td>
            <td>80%</td>
            <td>In Progress</td>
        </tr>
        <tr>
            <td>Workshop / Seminar Training</td>
            <td>60%</td>
            <td>70%</td>
            <td>In Progress</td>
        </tr>
    </table>

    <button class="btn">Download Report (PDF)</button>
</div>
   
</form>
</body>
</html>