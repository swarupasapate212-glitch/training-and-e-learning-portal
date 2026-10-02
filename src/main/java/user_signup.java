

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
 * Servlet implementation class user_signup
 */
@WebServlet("/user_signup")
public class user_signup extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String username = req.getParameter("username");
		String contact = req.getParameter("contact");
		String password = req.getParameter("password");
		String event = req.getParameter("submit");
		
		out.println(username);
		out.println(contact);
		out.println(password);
		out.println(event);
		
		
		if(event.equals("sign up"))
		{
			if(username.equals("")||contact.equals("")||password.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='user_signup.jsp'");
				out.println("</script>");
			}
			else
			{
				try
				{
					
					String insert = db.Insert("insert into signup( email, contact, password)values('"+username+"','"+contact+"','"+password+"')");
					out.println(insert);
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
			
		}
		
		
	}
}
