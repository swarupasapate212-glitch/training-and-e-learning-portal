<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <link rel="stylesheet" type="text/css" href="css\bootstrap.css">

	<link rel="stylesheet" type="text/css" href="css\user_payment.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
</head>
<body>
<form action="user_payment" method="post">
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
    <div class="div"><br><br>
		<center><h1 style="font-family:Algerian">Payment</h1></center><br><br>
		<input class="in" type="text" name="card_holder_Name" placeholder="Card Holder Name"><br><br>
        <input class="in" type="text" name="card_number" placeholder="Credit Card Number"><br><br>
        <div class="row">
         <div class="col-sm-6">
        <input class="in" type="text" name="expiry_date" placeholder="Expiry date"><br><br>
        <label style="margin-left:30px;font-size:25px; margin-top: 5px;">Total Amount:</label><br><br><br>
        
     </div>
     <div class="col-sm-6">
        <input style="margin-left:none;" class="in1" type="text" name="cvv" placeholder="CVV"><br><br>
         <input style="margin-left:none;" class="in1" type="text" name="amount" placeholder="Amount"><br><br><br>
        
     </div>
  </div><br><br>
       <center> <button style="background-color:#42E3BF;border-radius: 5px;height: 30px;width: 80px; " name="submit" value="pay">Pay now</button></center>
	</div>
    
</form>
</body>
</html>