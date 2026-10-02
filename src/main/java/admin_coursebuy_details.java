

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
 * Servlet implementation class admin_coursebuy_details
 */
@WebServlet("/admin_coursebuy_details")
public class admin_coursebuy_details extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String b_id = req.getParameter("b_id");
		
		String event = req.getParameter("submit");
		
		
		
		
		out.println(b_id);
		
		out.println(event);
		
		if(event.equals("Accept"))
		{ 
			try 
			{
				String update = db.update("update course_buy_detail set status='Accept' where b_id='"+b_id+"'");
				out.println(update);
				
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Accepted.')");
				out.println("location='admin_coursebuy_details.jsp'");
				out.println("</script>");
				
			}catch(Exception ex)
			{
				out.println(ex.toString());
			}
			
		}
		
		
		if(event.equals("Reject"))
		{ 
			try 
			{
				String update = db.update("update course_buy_detail set status='Reject' where b_id='"+b_id+"'");
				out.println(update);
				
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Rejected.')");
				out.println("location='admin_coursebuy_details.jsp'");
				out.println("</script>");
				
				
			}catch(Exception ex)
			{
				out.println(ex.toString());
			}
			
		}
		
		
		
				
		
	}
}
