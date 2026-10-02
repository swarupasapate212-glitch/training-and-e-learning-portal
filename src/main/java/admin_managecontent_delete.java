

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
 * Servlet implementation class admin_managecontent_delete
 */
@WebServlet("/admin_managecontent_delete")
public class admin_managecontent_delete extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String a_id = req.getParameter("a_id");
	
		String event = req.getParameter("submit");
		
		out.println(a_id);
		
		out.println(event);
		
		if(event.equals("delete"))
		{
			
			try 
			{
				String delete = db.delete("delete from admin_managecontent where a_id='"+a_id+"'");
				out.println(delete);
				
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Deleted Succsess.')");
				out.println("location='admin_managecontent.jsp'");
				out.println("</script>");
				
			}catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
	}
}
