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
	<div class="box">
	 <form action="admin_managecontent" method="post">
		<br>
        <center><h1 style="font-weight:bold;">Add Course Content</h1></center> <br>
        <label>Course Name:</label><input type="text" placeholder="Course Name" class="text" name="course_name"><br><br>
                 
                  <label>Course Content:</label><input type="text" placeholder="Course Content" class="text" name="syllabus_name"><br><br>
            
               <input type="submit" placeholder="Submit" class="btn" value="Submit" name="submit">
               <br><br>
        </form>
                  <br><br>
         <table style="width:100%">
  <tr class="tr">
   <th>ID</th>
    <th>Course name</th>
    <th>Course content</th>
    <th>option</th>
    
  </tr>
   <%
  Connection cn =null;
  Statement st =null;
	 Class.forName("com.mysql.jdbc.Driver");
	  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
	  st=cn.createStatement();
	  
	  String sql ="select * from admin_managecontent";
	  ResultSet rs = st.executeQuery(sql);
	  
	  while(rs.next())
	  {
  %>
  <form action="admin_managecontent_delete" method="post">
  <input type="hidden" value="<%=rs.getString("a_id") %>" name="a_id">
  
  <tr>
       <td><%=rs.getString("a_id") %></td>
    <td><%=rs.getString("course_name") %></td>
    <td><%=rs.getString("syllabus_name") %></td>
     
         <td><button style=" height:30px; width:80px;" value="edit" name="submit">Edit</button><button style="color:red; height:30px; width:80px;"value="delete" name="submit">Delete</button></td>
     
  </tr>
      </form>
  <%} %>
  </table> 
	</div>


</body>
</html>