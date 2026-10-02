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
    <th>Option</th>
    
    
    
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
  <form action="admin_coursebuy_details" method="post">
  <input type="hidden" value="<%=rs.getString("b_id") %>" name="b_id">
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
   <td><button style=" height:30px; width:80px; background-color:#42E3BF;border-radius:5px; " value="Accept" name="submit">Accept</button><button style=" height:30px; width:80px;background-color:red; border-radius:5px; margin-left:5px;"value="Reject" name="submit">Reject</button></td>
  
 
    
  </tr>
  </form>
  <%} %>
  
  </center>
</table></center>


</body>
</html>