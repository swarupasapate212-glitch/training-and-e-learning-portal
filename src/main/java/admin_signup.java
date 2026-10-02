

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
 * Servlet implementation class admin_signup
 */
@WebServlet("/admin_signup")
public class admin_signup extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter out = resp.getWriter();
	Database db = new Database();
	String result = db.Connectdb();
	out.println(result);
	
	String user = req.getParameter("user");
	String contact = req.getParameter("contact");
	String pass = req.getParameter("pass");
	String event = req.getParameter("submit");
	
	out.println(user);
	out.println(contact);
	out.println(pass);
	out.println(event);
	
	if(event.equals("sign up"))
	{
		if(user.equals("")||contact.equals("")||pass.equals(""))
		{
			resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('somthing is empty.')");
			out.println("location='admin_signup.jsp'");
			out.println("</script>");
		}
		else
		{
			try
			{
				
				String insert = db.Insert("insert into admin_signup(email, contact, password)values('"+user+"','"+contact+"','"+pass+"')");
				out.println(insert);
				
			}catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
		
	}
}
}
