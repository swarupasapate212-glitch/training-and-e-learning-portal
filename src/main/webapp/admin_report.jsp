<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css\user_nav.css ">
</head>
<body>
<form action="admin_report" method="post">
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
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Training & E-Learning | Report Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: 30px auto;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        /* Summary Cards */
        .cards {
            display: flex;
            gap: 20px;
            margin: 30px 0;
        }

        .card {
            flex: 1;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            text-align: center;
        }

        .card h2 {
            color: #3498db;
            margin: 0;
        }

        .card p {
            margin: 8px 0 0;
            color: #555;
        }

        /* Report Table */
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        table th, table td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background: #3498db;
            color: white;
        }

        table tr:hover {
            background: #f1f1f1;
        }

        /* Button */
        .btn {
            margin-top: 20px;
            padding: 10px 20px;
            background: #2ecc71;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background: #27ae60;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Student Learning Report</h1>

    <!-- Summary Section -->
    <div class="cards">
        <div class="card">
            <h2>5</h2>
            <p>Enrolled Courses</p>
        </div>
        <div class="card">
            <h2>3</h2>
            <p>Completed Courses</p>
        </div>
        <div class="card">
            <h2>82%</h2>
            <p>Average Score</p>
        </div>
        <div class="card">
            <h2>2</h2>
            <p>Certificates Earned</p>
        </div>
    </div>

    <!-- Table Section -->
    <table>
        <tr>
            <th>Course Name</th>
            <th>Progress</th>
            <th>Quiz Score</th>
            <th>Status</th>
        </tr>
        <tr>
            <td>Java Programming</td>
            <td>100%</td>
            <td>88%</td>
            <td>Completed</td>
        </tr>
        <tr>
            <td>Web Development</td>
            <td>75%</td>
            <td>80%</td>
            <td>In Progress</td>
        </tr>
        <tr>
            <td>Database Management</td>
            <td>60%</td>
            <td>70%</td>
            <td>In Progress</td>
        </tr>
    </table>

    <button class="btn">Download Report (PDF)</button>
</div>

</body>
</html>
    
    </form>
</body>
</html>