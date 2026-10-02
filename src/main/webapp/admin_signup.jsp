<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admin Login</title>
		<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css\admin_login.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">


</head>
<body>
<form action="admin_signup" method="post">
	<div class="navbar">
         <nav>
            <li><label class="learn">E-Learning</label></li>
        
          <li><a href="userlogin.jsp">User Login</a></li>
          
          <li><a href="admin_login.jsp">Admin Login</a></li>
           <li><a href="user_contactus.jsp">contact us</a></li>
          <li><a href="user_aboutus.jsp">About us</a></li>
        
          <li><a href="index.jsp">Log out</a></li>
      </nav>
    </div>
	<div class="mid"><br>
		<center><h1 style="color:white; font-family: Algerian;">sign up</h1></center>

		<input class="mid1" type="text" name="user" placeholder="Email or USERNAME"> 
		<i class='fa fa-user' style='font-size:40px; margin-left:10px ;  color:white;'></i>
		<input class="mid1" type="text" name="contact" placeholder="Contact"> 
		<i class='fa fa-user' style='font-size:40px; margin-left:10px ;  color:white;'></i>
		<input class="mid1" type="text" name="pass" placeholder="PASSWARD"> 
		<i class="fa fa-lock" style="font-size:36px;  margin-left:10px ;  color:white;"></i><br><br>

		

		<input class="login" type="submit" value="sign up" name="submit"><br><br>
		<label style="margin-left:120px;color: white;">You have account </label><a href="admin_login.jsp" style="margin-left:5px;">Login</a>
	</div>
</form>
</body>
</html>