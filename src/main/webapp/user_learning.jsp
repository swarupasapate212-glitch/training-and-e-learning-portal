
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

	<link rel="stylesheet" type="text/css" href="css\user_learning.css">
		<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
</head>
<body>


  


    <center><lable class="name" style="font-size:45px;">Courses</label></center>

  <%
  Connection cn =null;
  Statement st =null;
	 Class.forName("com.mysql.jdbc.Driver");
	  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
	  st=cn.createStatement();
	  
	  String sql ="select * from managecourse where course_name='"+session.getAttribute("course_name")+"'";
	  ResultSet rs = st.executeQuery(sql);
	  
	  if(rs.next())
	  {
  %>
<form action="user_learning" method="post">
<input type="hidden" value="<%=rs.getString("am_id") %>" name="am_id">
<input type="hidden" value="<%=rs.getString("course_name") %> " name="course_name">
<input type="hidden" value="<%=rs.getString("price") %> " name="course_price">
<input type="hidden" value="<%=rs.getString("image") %> " name="course_image">

<div class="row">
        	<div class="col-sm-6">
	<br><br>
		<div class="info">
			<lable class="name1"><%=rs.getString("course_name") %> </lable><br>
			<p class="para"><%=rs.getString("information") %></p><br>
			<p class="para1">5.0  🌟 🌟 🌟 🌟 🌟 | Review(1k)|10k Students</p>

			<hr>
			<img class="img1"style="margin-left: 100px" src="images\<%=rs.getString("image") %>">
		</div>
       </div>
         <div class="col-sm-6">
	  <br><br><br>
	      <video width="640" height="360" controls>
  <source src="images/<%=rs.getString("video") %>" type="video/mp4">
  <source src="<%=rs.getString("video") %>" type="video/webm">
  Your browser does not support the video tag.
</video><br><br>
   <%} %>
	
	<lable style="font-weight: bold;font-size:25px;">What will you learn..?</lable><br><br>
	
	
	<div class="row">
	
	<%
 
	 Class.forName("com.mysql.jdbc.Driver");
	  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
	  st=cn.createStatement();
	  
	  String sql1 ="select * from admin_managecontent where course_name='"+session.getAttribute("course_name")+"'";
	  ResultSet rs1 = st.executeQuery(sql1);
	  
	  if(rs1.next())
	  {
  %>
	
	<div class="col-sm-6">
	<li><%=rs.getString("syllabus_name") %> </li> <br>
	</div>
	
	
	</div>
	<%} %>
	      
	<br><br><br><br><br>
	 <input style="background-color:#42E3BF; border-radius:5px; margin-left:300px;height:35px;width:80px;"type="submit" value="Buy NOW" name="submit">
        </div>
    </div>
  </form>
</body>
</html>