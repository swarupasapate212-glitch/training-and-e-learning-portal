<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>index</title>
         <link rel="stylesheet" type="text/css" href="css\bootstrap.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css\user_signup.css">
     <link rel="stylesheet" type="text/css" href="css\user_nav.css ">
     
</head>
<body>
<form action="user_signup" method="post">
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
         <i class="fa fa-user" style="font-size:24px; margin-left: 10px;"></i><input class="box1" type="text" name="contact" placeholder="Contact number"><br><br>
        <i class="fa fa-lock" style="font-size:24px;margin-left: 10px;"></i> <input class="box1" type="password" name="password" placeholder="Enter your password">
        <br><br>

        <button class="login" name="submit" value="sign up">sign up</button><br><br>
        <label style="margin-left:60px">You have account :</label><a href="user_login.jsp" style="color:blue;margin-left:10px;">login</a>
        <img src="images\login1.png">
    </div>
  </div>

    
</form>
</body>
</html>