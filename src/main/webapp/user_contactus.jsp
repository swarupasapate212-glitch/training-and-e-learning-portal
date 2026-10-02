<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
<link rel="stylesheet" type="text/css" href="css\user_contactus.css">
<link rel="stylesheet" type="text/css" href="css\indexnav.css">
</head>
<body>

<div class="navbar">
         <nav>
            <li><label class="learn">E-Learning</label></li>
         <li><a href="index.jsp">Home</a></li>
         <li><a href="user_login.jsp">User</a></li>
          <li><a href="admin_login.jsp">Admin</a></li>
          <li><a href="user_aboutus.jsp">About us</a></li>
          <li><a href="user_contactus.jsp">Contact us</a></li>
          <li><a href="index.jsp">Log out</a></li>
          </nav>
    </div>
    <form action="user_contactus" method="post">
<div class=h1>
  <center>  <h1>Contact Us</h1>
    <p>
      Have questions about our courses, corporate training, or platform?
      We’re here to help.
    </p></center>
 </div>
 
 <div class="row">
<div class="col-sm-6">
  <div class="container">

    <div class="contact-info">
      <h2>Get in Touch</h2>

      <div class="info-item">
        <label style="font-weight:bold;">Email</label><br>
        support@elearningportal.com
      </div>

      <div class="info-item">
        <label  style="font-weight:bold;">Phone</label><br>
        9145876980,9865327845
      </div>

      <div class="info-item">
        <label  style="font-weight:bold;">Office Hours</label><br>
        Monday – Friday: 9:00 AM – 6:00 PM
      </div>

      <div class="info-item">
        <label  style="font-weight:bold;">Address</label><br>
        123 Learning Avenue, Pune.
      </div>
    </div>
</div>
</div>
<br><br><br><br>
<div class="col-sm-6">
    <div class="contact-form">
      <h2>Send Us a Message</h2>
      <div class="form">
        <input type="text" placeholder="Your Name" name="name" class="box1"  ><br><br>
        <input type="email" placeholder="Your Email" name="email" class="box1"  ><br><br>
        <input type="text" placeholder="Subject" name="subject" class="box1" ><br><br>
        <textarea placeholder="Your Message" name="message" class="box" ></textarea>
        
      </div>
    </div>
  </div>
  </div>
  <center><button type="submit" class="btn" name="submit" value="submit">Submit</button></center>
  </form>
</body>
</html>