<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>lecture list</title>
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
        <center><h1 style="font-weight:bold;"> Add Course lecture</h1></center> <br>
        <label>Course Name:</label><input type="text" placeholder="Course Name" class="text" name="course_name"><br><br>
                  <label>lecture name:</label><input type="file" placeholder="lecture name:" class="text" name="lecture_name:"><br><br>
            <label>Insert video:</label><input type="file" placeholder="Insert video" class="text" name="video"><br><br>
              
            <input type="submit" placeholder="Course Name" class="btn" value="Submit" name="submit"><br><br>
         <br><br><br>
         </form>
      
         <table style="width:100%">
  <tr class="tr">
    <th>Course name:</th>
    <th>lecture name:</th>
     <th>video</th>
    <th>option</th>
    
  </tr>
  
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
  <input type="hidden" value="<%=rs.getString("L_id") %>" name="L_id">
  <tr>
       <td><%=rs.getString("L_id") %></td>
    <td><%=rs.getString("course_name") %></td>
    <td><%=rs.getString("lecture_name") %></td>
     <td><%=rs.getString("video") %></td>
         <td><button style=" height:30px; width:80px;" value="Edit" name="submit">Edit</button><button style="color:red; height:30px; width:80px;"value="Delete" name="submit">Delete</button></td>
  
  </tr>
   </form>
  <%} %>
  </table> 
	
</body>
</html>