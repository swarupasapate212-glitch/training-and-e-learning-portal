

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
 * Servlet implementation class user_register
 */
@WebServlet("/user_register")
public class user_register extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out = resp.getWriter();

         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
		
		String name = req.getParameter("name");
		String name1 = req.getParameter("name1");
		String name2 = req.getParameter("name2");
		String name3 = req.getParameter("name3");
		String name4 = req.getParameter("name4");
		String event = req.getParameter("submit");
		
		out.println(name);
		out.println(name1);
		out.println(name2);
		out.println(name3);
		out.println(name4);
		out.println(event);
		
		if(event.equals("submit"))
		{
			if(name.equals("")||name1.equals("")||name2.equals("")||name3.equals("")||name4.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='user_register.jsp'");
				out.println("</script>");
			}
			
			else
			{
				try
				{
					
					String insert = db.Insert("insert into register(name, qualification, contact, address, email)values('"+name+"','"+name1+"','"+name2+"','"+name3+"','"+name4+"')");
					out.println(insert);
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
		}
	}
}
