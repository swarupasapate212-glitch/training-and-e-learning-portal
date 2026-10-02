

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class user_course
 */
@WebServlet("/user_course")
public class user_course extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String course_name = req.getParameter("course_name");
		String event = req.getParameter("submit");
	    out.println(course_name);
		
		if(event.equals("View more"))
		{
			session.setAttribute("course_name", course_name);
			resp.sendRedirect("user_learning.jsp");
		}
		
	}
	
}
