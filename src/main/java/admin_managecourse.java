

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
 * Servlet implementation class admin_managecourse
 */
@WebServlet("/admin_managecourse")
public class admin_managecourse extends HttpServlet {
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
		String price = req.getParameter("price");
		String image = req.getParameter("image");
		String video = req.getParameter("video");
		String event = req.getParameter("submit");
		
		out.println(course_name);
		out.println(information);
		out.println(price);
		out.println(image);
		out.println(video);
		out.println(event);
		
		if(event.equals("Submit"))
		{
			if(course_name.equals("")||information.equals("")||price.equals("")||image.equals("")||video.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='admin_managecourse.jsp'");
				out.println("</script>");
			}
			
			else
			{
				try
				{
					
					String insert = db.Insert("insert into managecourse(course_name, information, price, image, video)values('"+course_name+"','"+information+"','"+price+"','"+image+"','"+video+"')");
					out.println(insert);
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
		}
		
	}
	
}
