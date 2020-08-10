import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/problemServlet2")
public class ProblemServlet2 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DataBase db=new DataBase();
		try {
			HttpSession session=req.getSession();
			String noc=session.getAttribute("noc").toString();
			List<Category> listCatagory=db.lst2(noc);
			req.setAttribute("listCategory", listCatagory);
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		req.getRequestDispatcher("/JSP/problem2.jsp").forward(req, resp);
		super.doGet(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("cid"));
	String reply=req.getParameter("cr");
	DataBase db=new DataBase();
	boolean b=db.replyUpdate(id, reply);
	if(b)
	{
		System.out.println("Complain submitted "+reply);
	}
	else
	{
		System.out.println("Failed");
	}
	
	
		req.getRequestDispatcher("/JSP/Index2.jsp").forward(req, resp);
		super.doPost(req, resp);
	}

}
