

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
 * Servlet implementation class admin_register
 */
@WebServlet("/admin_register")
public class admin_register extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String name = req.getParameter("name");
		String qualification = req.getParameter("qualification");
		String contact = req.getParameter("contact");
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String event = req.getParameter("submit");
		
		out.println(name);
		out.println(qualification);
		out.println(contact);
		out.println(address);
		out.println(email);
		out.println(event);
		
		
		if(event.equals("sign up"))
		{
			if(name.equals("")||qualification.equals("")||contact.equals("")||qualification.equals("")||address.equals("")||email.equals(""))
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
					
					String insert = db.Insert("insert into register(name, qualification, contact, address, email)values('"+name+"','"+qualification+"','"+contact+"','"+address+"','"+email+"')");
					out.println(insert);
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
			
		}
		
		
	}

}
