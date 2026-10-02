

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
 * Servlet implementation class admin_course
 */
@WebServlet("/admin_course")
public class admin_course extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String course_name = req.getParameter("course_name");
		String information = req.getParameter("information");
	
		String image = req.getParameter("image");

		String event = req.getParameter("submit");
		
		out.println(course_name);
		out.println(information);
		
		out.println(image);

		out.println(event);
		
		if(event.equals("Submit"))
		{
			if(course_name.equals("")||information.equals("")||image.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='admin_course.jsp'");
				out.println("</script>");
			}
			
			else
			{
				try
				{
					
					String insert = db.Insert("insert into course(course_name, information, image )values('"+course_name+"','"+information+"','"+image+"')");
					out.println(insert);
					
					 resp.setContentType("text/html");
						out.println("<script type='text/javascript'>");
						out.println("alert('Course Added Succsessfully..')");
						out.println("location='admin_course.jsp'");
						out.println("</script>");
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
			
		}
		
	}

}
