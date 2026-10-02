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
<link rel="stylesheet" type="css\bootstrap.css">
	 

	<link rel="stylesheet" type="text/css" href="css\admin_course.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
	
   <style>
table, th, td {
  border:1px solid black;
}
</style>
</head>
<body>
<form action="admin_lecture" method="post">
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
          <li><a href="admin_feedback.jsp">Feedback</a></li>
          <li><a href=admin_coursebuy_details.jsp>buy_detail</a></li>
          <li><a href="admin_report.jsp">Report</a></li>
          <li><a href="index.jsp">Log out</a></li>
         
          
      </nav>
    </div>
    <div class="box">
		<br>
        <center><h1 style="font-weight:bold;">Add Course</h1></center> <br>
        <label>Course Name:</label><input type="text" placeholder="Course Name" class="text" name="course_name"><br><br>
                 <label>Lecture name:</label><input type="text" placeholder="Lecture name" class="text" name="lecture_name"><br><br>
            <label>Insert video:</label><input type="file" placeholder="Information" class="text" name="video"><br><br>
              
            <input type="submit" placeholder="Course Name" class="btn" value="Submit" name="submit"><br><br>
         <br><br><br>
         </form>
      
         <table style="width:100%">
  <tr class="tr">
    <th>Course Name</th>
    <th>Lecture name</th>
     <th>video</th>
    <th>option</th>
     <%
  Connection cn =null;
  Statement st =null;
	 Class.forName("com.mysql.jdbc.Driver");
	  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
	  st=cn.createStatement();
	  
	  String sql ="select * from course";
	  ResultSet rs = st.executeQuery(sql);
	  
	  while(rs.next())
	  {
  %>
  <form action="admin_lecture_delete" method="post">
  <input type="hidden" value="<%=rs.getString("c_id") %>" name="c_id">
  <tr>
       <td><%=rs.getString("c_id") %></td>
    <td><%=rs.getString("course_name") %></td>
    <td><%=rs.getString("information") %></td>
     <td><%=rs.getString("image") %></td>
         <td><button style=" height:30px; width:80px;" value="Edit" name="submit">Edit</button><button style="color:red; height:30px; width:80px;"value="Delete" name="submit">Delete</button></td>
  
  </tr>
     </form>
  <%}%>
  </table> 
	</div>
    
  </tr>
</body>
</html>