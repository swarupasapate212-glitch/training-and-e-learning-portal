

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class user_login
 */
@WebServlet("/user_login")
public class user_login extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String event = req.getParameter("submit");
		
		out.println(username);
		out.println(password);
		out.println(event);
		
		if(event.equals("login"))
		{
			if(username.equals("")||password.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='user_login.jsp'");
				out.println("</script>");
			}
			else
			{
				
				try
				{
					Statement st =null;
					 Class.forName("com.mysql.jdbc.Driver");
					  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_learning_portal","root","root");
					  st=cn.createStatement();
					  
					  String sql ="select * from signup where email='"+username+"' && password='"+password+"'";
					  ResultSet rs = st.executeQuery(sql);
					  
					  if(rs.next())
					  {
						  session.setAttribute("u_id",rs.getString("u_id"));
						  session.setAttribute("email",rs.getString("email"));
						  session.setAttribute("contact",rs.getString("contact"));
						  
						  
						  resp.setContentType("text/html");
							out.println("<script type='text/javascript'>");
							out.println("alert('Login Succsess.')");
							out.println("location='user_dashboard.jsp'");
							out.println("</script>");
					  }
					  else
					  {
						  resp.setContentType("text/html");
							out.println("<script type='text/javascript'>");
							out.println("alert('Login Unuccsess.')");
							out.println("location='user_login.jsp'");
							out.println("</script>");
					  }
							  
					  
					  
					
				}catch(Exception ex)
				{
					
				}
				
			}
			
			
		}
	}
}
