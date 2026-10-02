<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css\bootstrap.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css\user_login.css">
    <link rel="stylesheet" type="text/css" href="css\user_nav.css ">

</head>
<body>
<form action="user_login" method="post">
   <div class="navbar">
         <nav>
          <li><label class="learn">E-Learning</label></li>
         
          <li><a href="user_login.jsp">User Login</a></li>
          
          <li><a href="admin_login.jsp">Admin Login</a></li>
           <li><a href="user_contactus.jsp">contact us</a></li>
          <li><a href="user_aboutus.jsp">About us</a></li>
           
          <li><a href="index.jsp">Log out</a></li>
      </nav>
    </div>
  <div class="row">
    <div class="col-sm-6">
       <hr class="line1">
            <div class="row">
                <div class="col-sm-1">
                      <div class="line2">
                      </div>
                </div>
                 <div class="col-sm-11">
                     <label class ="box">Training <br>and <br>E-learning <br>Portal</label>
                </div>
            </div>
          
    </div>

     <div class="col-sm-6"><br><br>
         <i class="fa fa-user" style="font-size:24px; margin-left: 10px;"></i><input class="box1" type="text" name="username" placeholder="Email or username"><br><br>
        <i class="fa fa-lock" style="font-size:24px;margin-left: 10px;"></i> <input class="box1" type="text" name="password" placeholder="Enter your password">
        <br><br>

        <button class="login" name="submit" value="login">Login</button><br><br>
        <label style="margin-left:60px">You have no account:</label><a style="color:blue;margin-left: 5px;" href="user_signup.jsp">signup</a>
        <img src="images\login1.png">
    </div>
  </div>

    </form>
</body>
</html>