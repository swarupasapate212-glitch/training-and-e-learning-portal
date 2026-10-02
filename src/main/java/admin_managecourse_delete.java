

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
 * Servlet implementation class admin_managecourse_delete
 */
@WebServlet("/admin_managecourse_delete")
public class admin_managecourse_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        Database db = new Database();
    	String result = db.Connectdb();
    	out.println(result);
		

		String am_id = req.getParameter("am_id");
		String event = req.getParameter("submit");
	
		
		
		out.println(am_id);

		out.println(event);
		
		if(event.equals("Delete"))
		{
			
			try 
			{
				String delete = db.delete("delete from managecourse where am_id='"+am_id+"'");
				out.println(delete);
				
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Deleted Succsess.')");
				out.println("location='admin_managecourse.jsp'");
				out.println("</script>");
				
			}catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
	}
}
