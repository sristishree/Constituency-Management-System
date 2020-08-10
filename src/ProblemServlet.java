import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/problemServlet")
public class ProblemServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DataBase db=new DataBase();
		try {
			List<Category> listCatagory=db.lst();
			req.setAttribute("listCategory", listCatagory);
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			
		}
		req.getRequestDispatcher("/JSP/problem.jsp").forward(req, resp);
		super.doGet(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
