<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css\admin_register.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
	
</head>
<style>
table, th, td {
  border:1px solid black;
}
</style>
<body>
<form action="user_coursebuy_details" method="post">
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
    
    
      
   <center><h2>User Buy course details</h2></center>
<br><br>

<center><table style="width:80%">
  <tr class="tr">
  <th>ID</th>
    <th>course_id</th>
    <th>course_name</th>
    <th>course_price</th>
    <th>course_buy_date</th>
    <th>course_image</th>
    <th>status</th>
    <th>user_id</th>
    <th>email</th>
    <th>user_contact</th>
   
    
    
  </tr>
  
  <%
  Connection cn =null;
  Statement st =null;
	 Class.forName("com.mysql.jdbc.Driver");
	  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
	  st=cn.createStatement();
	  
	  String sql ="select * from course_buy_detail";
	  ResultSet rs = st.executeQuery(sql);
	  
	  while(rs.next())
	  {
  %>
  
  <tr>
       <td><%=rs.getString("b_id") %></td>
    <td><%=rs.getString("course_id") %></td>
    <td><%=rs.getString("course_name") %></td>
 <td><%=rs.getString("course_price") %></td>
  <td><%=rs.getString("course_buy_date") %></td>
   <td><%=rs.getString("course_image") %></td>
   <td><%=rs.getString("status") %></td>
   <td><%=rs.getString("user_id") %></td>
   <td><%=rs.getString("email") %></td>
   <td><%=rs.getString("user_contact") %></td>
   
 
    
  </tr>
  <%} %>
  
  </center>
</table></center>

</form>
</body>
</html>