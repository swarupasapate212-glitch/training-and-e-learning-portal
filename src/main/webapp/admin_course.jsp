<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admin Login</title>
		<link rel="stylesheet" type="css\bootstrap.css">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="css\admin_course.css">
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
	
   <style>
table, th, td {
  border:1px solid black;
}
</style>
</head>
<body>
<form action="admin_course" method="post">
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
                 <label>Information:</label> <textarea class="text" name="information"></textarea><br><br>
            <label>Insert Image:</label><input type="file" placeholder="Information" class="text" name="image"><br><br>
              
            <input type="submit" placeholder="Course Name" class="btn" value="Submit" name="submit"><br><br>
         <br><br><br>
         </form>
      
         <table style="width:100%">
  <tr class="tr">
    <th>Course</th>
    <th>Imformation</th>
     <th>Image</th>
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
  <form action="admin_course_delete" method="post">
  <input type="hidden" value="<%=rs.getString("c_id") %>" name="c_id">
  <tr>
       <td><%=rs.getString("c_id") %></td>
    <td><%=rs.getString("course_name") %></td>
    <td><%=rs.getString("information") %></td>
     <td><%=rs.getString("image") %></td>
         <td><button style=" height:30px; width:80px;" value="Edit" name="submit">Edit</button><button style="color:red; height:30px; width:80px;"value="Delete" name="submit">Delete</button></td>
  
  </tr>
     </form>
  <%} %>
  </table> 
	</div>

</body>
</html>