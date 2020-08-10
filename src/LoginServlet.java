import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    req.getRequestDispatcher("JSP/login.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tb=req.getParameter("tab");
		String name=req.getParameter("user");
		String pass=req.getParameter("pass");
		String ch=req.getParameter("check");
		String name1=req.getParameter("user1");
		String pass1=req.getParameter("pass1");
		String ch1=req.getParameter("check1");
		DataBase db=new DataBase();
		Boolean b;
		//req.getRequestDispatcher("residentServlet").forward(req, resp);
		String error;
		String errorMsg;
		String userType;
		if(tb.equals("0")) {
			error="error";
		System.out.println(ch);
		System.out.println(name);
		System.out.println(pass);
		userType="user1";
		b=db.authenticate(name, pass,userType);
		}
		else
		{
			error="error1";
			System.out.println(ch1);
			System.out.println(name1);
			System.out.println(pass1);
			name=name1;
			pass=pass1;
			userType="user2";
			b=db.authenticate(name1, pass1,userType);
		}
		if(b) {
			HttpSession session=req.getSession();
			session.setAttribute("name",db.un);
			session.setAttribute("Email",db.em);
			session.setAttribute("noc",db.nc);
			session.setAttribute("adhar",db.ad);
			 errorMsg="";
			 session.setAttribute("error", errorMsg);
			 session.setAttribute("error1", errorMsg);
			System.out.println("correct input");
			if(userType.equals("user1")) {
				session.setAttribute("userType","user1");
			req.getRequestDispatcher("/JSP/Index.jsp").forward(req, resp);
			}
			else
			{
				session.setAttribute("userType","user2");
				req.getRequestDispatcher("/JSP/Index2.jsp").forward(req, resp);
			}
		}
			else
			{
				
				errorMsg="Wrong credentials ";
				System.out.println("incorrect name or password or both");
				req.setAttribute(error,errorMsg);
				req.getRequestDispatcher("/JSP/login.jsp").forward(req, resp);
			}
		
		super.doPost(req, resp);
	}

}
