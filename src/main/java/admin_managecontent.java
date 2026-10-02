

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
 * Servlet implementation class admin_managecontent
 */
@WebServlet("/admin_managecontent")
public class admin_managecontent extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String course_name = req.getParameter("course_name");
		String syllabus_name = req.getParameter("syllabus_name");
		String event = req.getParameter("submit");
		
		
		
		out.println(course_name);
		out.println(syllabus_name);
		out.println(event);
		
		if(event.equals("Submit"))
		{
			if(course_name.equals("")||syllabus_name.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='admin_managecontent.jsp'");
				out.println("</script>");
			}
			else
			{
				try
				{
					
					String insert = db.Insert("insert into admin_managecontent(course_name, syllabus_name)values('"+course_name+"','"+syllabus_name+"')");
					out.println(insert);
					

//					resp.setContentType("text/html");
//					out.println("<script type='text/javascript'>");
//					out.println("alert('somthing is empty.')");
//					out.println("location='admin_managecontent.jsp'");
//					out.println("</script>");
					
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
			
		}
		
	}
	
}
