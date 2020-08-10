import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/rdServlet")
public class ResidentsDetails extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DataBase db=new DataBase();
		try {
			HttpSession session=req.getSession();
			String noc=session.getAttribute("noc").toString();
			//List<Category> listCatagory=db.lst3(noc);
			//req.setAttribute("listCategory2", listCatagory);
			
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
	DataBase db=new DataBase();
	HttpSession session=req.getSession();
	String Aadhaar=session.getAttribute("adhar").toString();
	String NOC=session.getAttribute("noc").toString();
	String Statement=req.getParameter("Statement");
	Boolean b=db.complainUpdate(Statement, Aadhaar, NOC);
	if(b)
	{
		System.out.println("complain submitted ");
			
	}
	else
	{
		System.out.println("Failed");
	}
	
	
		req.getRequestDispatcher("/JSP/editor.jsp").forward(req, resp);
		super.doPost(req, resp);
	}

}
