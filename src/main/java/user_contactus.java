

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
 * Servlet implementation class user_contactus
 */
@WebServlet("/user_contactus")
public class user_contactus extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
	
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String subject = req.getParameter("subject");
		String message = req.getParameter("message");
		String event = req.getParameter("submit");
		
		out.println(name);
		out.println(email);
		out.println(subject);
		out.println(message);
		out.println(event);
		
		if(event.equals("submit"))
		{
			if(name.equals("")||email.equals("")||subject.equals("")||message.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='user_contactus.jsp'");
				out.println("</script>");
			}
			
			else
			{
				try
				{
					
					String insert = db.Insert("insert into contact_us( Name, Email, subject, message)values('"+name+"','"+email+"','"+subject+"','"+message+"')");
					out.println(insert);
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
}
	}
}
