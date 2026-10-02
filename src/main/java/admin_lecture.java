
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
 * Servlet implementation class admin_lecture
 */
@WebServlet("/admin_lecture")
public class admin_lecture extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String course_name = req.getParameter("course_name");
		String lecture_name = req.getParameter("lecture_name:");
	
		String video = req.getParameter("video");

		String event = req.getParameter("submit");
		
		out.println(course_name);
		out.println(lecture_name);
		out.println(video);

		out.println(event);
		
		if(event.equals("Submit"))
		{
			if(course_name.equals("")||lecture_name.equals("")||video.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='admin_lecture.jsp'");
				out.println("</script>");
			}
			
			else
			{
				try
				{
					
					String insert = db.Insert("insert into course(course_name, lecture_name, video )values('"+course_name+"','"+lecture_name+"','"+video+"')");
					out.println(insert);
					
					 resp.setContentType("text/html");
						out.println("<script type='text/javascript'>");
						out.println("alert('video Added Succsessfully..')");
						out.println("location='admin_lecture.jsp'");
						out.println("</script>");
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
			
		}
		
	}
}

