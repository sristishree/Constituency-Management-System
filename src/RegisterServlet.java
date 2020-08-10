import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/register")
public class RegisterServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 req.getRequestDispatcher("JSP/register.jsp").forward(req, resp);
		super.doGet(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String errorMsg="";
		String tb=req.getParameter("tab");
		String name=req.getParameter("user");
		String pass=req.getParameter("pass");
		String rpass=req.getParameter("RPass");
		String adharno=req.getParameter("AadharNo");
		String noc=req.getParameter("NOC");
		String email=req.getParameter("Email");
		String adharno1=req.getParameter("AadharNo1");
		String noc1=req.getParameter("NOC1");
		String email1=req.getParameter("Email1");
		String name1=req.getParameter("user1");
		String pass1=req.getParameter("pass1");
		String rpass1=req.getParameter("RPass1");
		System.out.println(tb);
		DataBase db=new DataBase();
		Boolean b=false;
		Boolean c=false;
		String adhaar;
		String userType="";
		
		if(tb.equals("0"))
		{
			System.out.println(name);
			System.out.println(pass);
			System.out.println(rpass);
			System.out.println(adharno);
			System.out.println(noc);
			System.out.println(email);
			adhaar=adharno;
			if(!pass.equals(rpass)) {
				errorMsg="Passwords don't match";
				req.setAttribute("error3",errorMsg);
			}
			else if(adharno.length()!=12)
			{
				System.out.println("length="+adharno.length());
				errorMsg="Wrong Aadhaar Number";
				req.setAttribute("error3",errorMsg);
			}
			else
				{
				errorMsg="";
			userType="user1";
			c=true;
			b=db.register(name,pass,adhaar, noc, email,userType);
			req.setAttribute("error3",errorMsg);
				}
			
		}
		else
		{
			System.out.println(name1);
			System.out.println(pass1);
			System.out.println(rpass1);
			System.out.println(adharno1);
			System.out.println(noc1);
			System.out.println(email1);
			adhaar=adharno1;
			if(!pass1.equals(rpass1)) {
				errorMsg="Passwords don't match";
			req.setAttribute("error3",errorMsg);
			}
			else if(adharno1.length()!=12)
			{
				errorMsg="Wrong Aadhaar Number";
				req.setAttribute("error3",errorMsg);
			}
			else
				{
			errorMsg="";
			userType="user2";
			c=true;
			b=db.register(name1,pass1,adhaar, noc1, email1,userType);
			req.setAttribute("error3",errorMsg);
				}
			
			
		}
		if(b) {
			HttpSession session=req.getSession();
			session.setAttribute("name",name);
			session.setAttribute("userType", userType);
			System.out.println("registered");
			 req.getRequestDispatcher("JSP/login.jsp").forward(req, resp);
		}
			else if(c==true&&b==false)
			{
				System.out.println("not registered");
				errorMsg="Aadhaar already registered ";
				req.setAttribute("error3",errorMsg);
				req.getRequestDispatcher("JSP/register.jsp").forward(req, resp);
			}
			else
			{
				req.getRequestDispatcher("JSP/register.jsp").forward(req, resp);
				
			}
		super.doPost(req, resp);
	}

}
