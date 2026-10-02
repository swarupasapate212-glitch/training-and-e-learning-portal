

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
 * Servlet implementation class admin_managequiz
 */
@WebServlet("/admin_managequiz")
public class admin_managequiz extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        Database db = new Database();
    	String result = db.Connectdb();
    	out.println(result);
    	
		
		String course_name = req.getParameter("course_name");
		String questionno = req.getParameter("questionno");
		String questionname = req.getParameter("questionname");
		String option1 = req.getParameter("option1");
		String option2 = req.getParameter("option2");
		String option3 = req.getParameter("option3");
		String option4 = req.getParameter("option4");
		String correct = req.getParameter("correct");
		String event = req.getParameter("submit");
		
		out.println(course_name);
		out.println(questionno);
		out.println(questionname);
		out.println(option1);
		out.println(option2);
		out.println(option3);
		out.println(option4);
		out.println(correct);
		out.println(event);
		
		if(event.equals("Submit"))
		{
			if(course_name.equals("")||questionno.equals("")||questionname.equals("")||option1.equals("")||option2.equals("")||option3.equals("")||option4.equals("")||correct.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('somthing is empty.')");
				out.println("location='admin_managequiz.jsp'");
				out.println("</script>");
			}
			
			else
			{
				try
				{
					
					String insert = db.Insert("insert into admin_quiz(course_name, quation_no, quation_name, option_1, option_2, option_3, option_4, correct_answar)values('"+course_name+"','"+questionno+"','"+questionname+"','"+option1+"','"+option2+"','"+option3+"','"+option4+"','"+correct+"')");
					out.println(insert);
					
				}catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
		}
		
		
		
		
	}
	
}
