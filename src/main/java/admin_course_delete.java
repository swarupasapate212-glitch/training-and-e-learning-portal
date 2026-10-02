

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
 * Servlet implementation class admin_course_delete
 */
@WebServlet("/admin_course_delete")
public class admin_course_delete extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String c_id = req.getParameter("c_id");
		String event = req.getParameter("submit");
	
		
		
		out.println(c_id);

		out.println(event);
		
		if(event.equals("Delete"))
		{
			
			try 
			{
				String delete = db.delete("delete from course where c_id='"+c_id+"'");
				out.println(delete);
				
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Deleted Succsess.')");
				out.println("location='admin_course.jsp'");
				out.println("</script>");
				
			}catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
	}

}
