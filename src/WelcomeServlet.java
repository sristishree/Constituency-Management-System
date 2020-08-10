
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
@WebServlet(urlPatterns="/welcome")
public class WelcomeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	HttpSession session=req.getSession();
	try {
	 String n=(String)session.getAttribute("name"); 
	 if(n.isEmpty())
	 {
			req.getRequestDispatcher("/JSP/main_page.jsp").forward(req, resp);	
	 }
	 else
	 {
		 String userType=(String)session.getAttribute("userType"); 
		 if(userType.equals("user1"))
			req.getRequestDispatcher("/JSP/Index.jsp").forward(req, resp);	
		 else
			 req.getRequestDispatcher("/JSP/Index2.jsp").forward(req, resp);	
	 }
	}
	catch(Exception e)
	{
		req.getRequestDispatcher("/JSP/main_page.jsp").forward(req, resp);	
	}
	 
	 
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		super.doPost(req, resp);
	}
}
