

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
 * Servlet implementation class user_learning
 */
@WebServlet("/user_learning")
public class user_learning extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	PrintWriter out = resp.getWriter();
	HttpSession session = req.getSession();
	Database db = new Database();
	String result = db.Connectdb();
	out.println(result);
	
	String am_id = req.getParameter("am_id");
	String course_name = req.getParameter("course_name");
	String course_price = req.getParameter("course_price");
	String course_image = req.getParameter("course_image");
	String event = req.getParameter("submit");
	
	out.println(am_id);
	out.println(course_name);
	out.println(course_price);
	out.println(course_image);
	out.println(event);
	
	  if(event.equals("Buy NOW"))
	  {
		  session.setAttribute("am_id", am_id);
		  session.setAttribute("course_name", course_name);
		  session.setAttribute("course_price", course_price); 
		  session.setAttribute("course_image", course_image);

		  

		  resp.sendRedirect("user_payment.jsp");
	  }
	
	
	
}
}
