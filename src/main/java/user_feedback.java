

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
 * Servlet implementation class user_feedback
 */
@WebServlet("/user_feedback")
public class user_feedback extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		
		
		String useful = req.getParameter("useful");
		String instructor = req.getParameter("instructor");
        String event = req.getParameter("submit");
		
		out.println(useful);
		out.println(instructor);
		out.println(event);
		

		if(event.equals("SEND FEEDBACK"))
		{
			if(useful.equals("")||instructor.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='user_feedback.jsp'");
				out.println("</script>");
			}
		
		
			else
			{
				try
				{
					
					String insert = db.Insert("insert into user_feedback( useful, instructor)values('"+useful+"','"+instructor+"')");
					out.println(insert);
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
		
	}

	}
}
