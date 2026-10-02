

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
import java.text.SimpleDateFormat;
import java.util.Date;

import com.mysql.cj.Session;

/**
 * Servlet implementation class user_payment
 */
@WebServlet("/user_payment")
public class user_payment extends HttpServlet {
	Connection cn =null;
	Statement st = null;
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter out = resp.getWriter();
	HttpSession session = req.getSession();
	Database db = new Database();
	String result = db.Connectdb();
	out.println(result);
	
	String card_holder_Name = req.getParameter("card_holder_Name");
	String card_number = req.getParameter("card_number");
	String expiry_date = req.getParameter("expiry_date");
	String cvv = req.getParameter("cvv");
	String amount = req.getParameter("amount");
	String event = req.getParameter("submit");
	
	out.println(card_holder_Name);
	out.println(card_number);
	out.println(expiry_date);
	out.println(cvv);
	out.println(amount);
	out.println(event);
	
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	String c_date = formatter.format(date);
	
	
	if(event.equals("pay"))
	{
		if(card_holder_Name.equals("")||card_number.equals("")||expiry_date.equals("")||cvv.equals("")||amount.equals(""))
		{
			resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('somthing is empty')");
			out.println("location='user_payment.jsp'");
			out.println("</script>");
		}
		else
		{
			try
			{
				
				String insert = db.Insert("insert into payment(card_holder_Name, card_number,expiry_date,cvv,amount,user_id)values('"+card_holder_Name+"','"+card_number+"','"+expiry_date+"','"+cvv+"','"+amount+"','"+session.getAttribute("u_id")+"')");
				out.println(insert);
				
				String insert1 = db.Insert("insert into course_buy_detail( course_id, course_name, course_price, course_buy_date, course_image, status, user_id, email, user_contact)values('"+session.getAttribute("am_id")+"','"+session.getAttribute("course_name")+"','"+session.getAttribute("course_price")+"','"+c_date+"','"+session.getAttribute("course_image")+"','Pending','"+session.getAttribute("u_id")+"','"+session.getAttribute("email")+"','"+session.getAttribute("contact")+"')");
				out.println(insert1);
				
				

			resp.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('Payment sucessfully.')");
			out.println("location='user_payment.jsp'");
			out.println("</script>");
				
				
			}catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
		
	}
}
}
