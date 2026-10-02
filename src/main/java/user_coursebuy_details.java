

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class user_coursebuy_details
 */
@WebServlet("/user_coursebuy_details")
public class user_coursebuy_details extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String course_id = req.getParameter("course_id");
		String course_name = req.getParameter("course_name");
		String course_price = req.getParameter("course_price");
		String course_buy_date = req.getParameter("course_buy_date");
		String course_image = req.getParameter("course_image");
		String status = req.getParameter("status");
		String user_id = req.getParameter("user_id");
		String email = req.getParameter("email");
		String user_contact = req.getParameter("user_contact");
		String event = req.getParameter("submit");
		
		
		
		
		out.println(course_id);
		out.println(course_name);
		out.println(course_price);
		out.println(course_buy_date);
		out.println(course_image);
		out.println(status);
		out.println(user_id);
		out.println(email);
		out.println(user_contact);
		out.println(event);
		
		

}
}