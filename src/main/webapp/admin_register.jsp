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
<body>
<form action="admin_register" method="post">
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
<style>
table, th, td {
  border:1px solid black;
}
</style>


<h2>User Detail</h2>
<br><br>

<center><table style="width:80%">
  <tr class="tr">
  <th>ID</th>
    <th>Name</th>
    <th>Qualification</th>
    <th>contact</th>
    <th>address</th>
    <th>email</th>
    
    
  </tr>
  
  <%
  Connection cn =null;
  Statement st =null;
	 Class.forName("com.mysql.jdbc.Driver");
	  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
	  st=cn.createStatement();
	  
	  String sql ="select * from register";
	  ResultSet rs = st.executeQuery(sql);
	  
	  while(rs.next())
	  {
  %>
  
  <tr>
       <td><%=rs.getString("r_id") %></td>
    <td><%=rs.getString("Name") %></td>
    <td><%=rs.getString("Qualification") %></td>
 <td><%=rs.getString("contact") %></td>
  <td><%=rs.getString("address") %></td>
   <td><%=rs.getString("email") %></td>
 
    
  </tr>
  <%} %>
  
  </center>
</table></center>

</form>
</body>
</html>