<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
	<link rel="stylesheet" type="text/css" href="css\user_courses.css">
	<style type="text/css"><%@include file="css/user_courses.css"%></style>

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
    
   
<center><h1 class="div2">All Contents</h1></center>


 <%
  Connection cn =null;
  Statement st =null;
	 Class.forName("com.mysql.jdbc.Driver");
	  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
	  st=cn.createStatement();
	  
	  String sql ="select * from managecourse ";
	  ResultSet rs = st.executeQuery(sql);
	  
	  while(rs.next())
	  {
  %>
  <form action="user_course" method="post">
  <input type="hidden" value="<%=rs.getString("course_name") %>" name="course_name">
 <div class="row">


	<div class="col-sm-4">
	<div class="box1">
      <img style="margin-left:30px" src="images\<%=rs.getString("image") %>">
					<br>
<p style="margin-left:30px; font-size:20px;font-weight: bold;">Name of Course:<br><%=rs.getString("course_name") %></p>
<label style="margin-left:30px;">Price=<%=rs.getString("price") %>rs/-</label><br>
<button class="in"name="submit" value="View more">View more</a></button><br><br>
</div>
</div>
</form>
	<%} %>
	
</div>
<br>

</body>
</html>