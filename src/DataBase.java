import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DataBase {
	String un,ps,ad,em,nc;
	public Connection connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Const","root","");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public boolean authenticate(String name, String pass,String userType)
	{
		try {
		Connection con=connect();
		Statement st=con.createStatement();
		
		String query= new String("SELECT Username, Password, Aadhaar, Email, NOC FROM "+userType+" WHERE Aadhaar = '"+name+"'");
		ResultSet rs=st.executeQuery(query);
		String s=null;
		while(rs.next())
		{
			s=rs.getString("Password");
			if(s.equals(pass))
				{
				un=rs.getString("Username");
				ad=rs.getString("Aadhaar");
				em=rs.getString("Email");
				nc=rs.getString("NOC");
				return true;
				}
		}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean register(String name, String pass,String Aadhaar,String Noc,String Email,String userType)
	{
		try {
			Connection conn=connect();
			Statement st= conn.createStatement();
		int i=st.executeUpdate("INSERT INTO "+userType+" (Username, Password, Aadhaar, Email, NOC) VALUES ('"+name+"', '"+pass+"', '"+Aadhaar+"', '"+Email+"', '"+Noc+"')");
		//System.out.println(i+"  kamal   "+pass);
		if(i>0)
			return true;
		else {
			
		return false;
		}
		}
		catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return false;
		}
		
	}
	public boolean complainUpdate(String Statement,String Aadhaar,String NOC)
	{
		try {
			Connection conn=connect();
			Statement st= conn.createStatement();
		int i=st.executeUpdate("INSERT INTO complain ( Aadhaar, NOC, Statement) VALUES ('"+Aadhaar+"', '"+NOC+"', '"+Statement+"')");
		//System.out.println(i+"  kamal   "+pass);
		if(i>0)
			return true;
		else {
			
		return false;
		}
		}
		catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return false;
		}
	}
	public List<Category> lst(){
		List<Category> listCategory = new ArrayList<>();
		try {
			Connection conn=connect();
			Statement st= conn.createStatement();
			String query= new String("SELECT * FROM complain ORDER BY Severity");
			ResultSet rs=st.executeQuery(query);
			while(rs.next())
			{
				int id=rs.getInt("Id");
				String Aadhaar=rs.getString("Aadhaar");
				 String Severity=rs.getString("Severity");
				String Status=rs.getString("Status");
				 String Noc=rs.getString("NOC");
				 String Statement=rs.getString("Statement");
				 String Reply=rs.getString("Reply");
				 if(Statement.length()>100)
					 Statement=Statement.substring(0,100);
				 Category category = new Category(id,  Aadhaar,  Severity,  Status, Noc,  Statement,Reply);
				 listCategory.add(category);
			}
		
		}
		catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			
		}
		return listCategory;
		
	}
	public List<Category> lst2(String noc){
		List<Category> listCategory = new ArrayList<>();
		try {
			Connection conn=connect();
			Statement st= conn.createStatement();
			String query= new String("SELECT * FROM complain ORDER BY Severity");
			ResultSet rs=st.executeQuery(query);
			while(rs.next())
			{
				 String Noc=rs.getString("NOC");
				 if(Noc.equals(noc)) {
				int id=rs.getInt("Id");
				String Aadhaar=rs.getString("Aadhaar");
				 String Severity=rs.getString("Severity");
				String Status=rs.getString("Status");
				String Reply=rs.getString("Reply");
				 String Statement=rs.getString("Statement");
				 if(Statement.length()>100)
					 Statement=Statement.substring(0,100);
				 Category category = new Category(id,  Aadhaar,  Severity,  Status, Noc,  Statement, Reply);
				 listCategory.add(category);
				 }
			}
		
		}
		catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			
		}
		return listCategory;
		
	}
	public boolean replyUpdate(int id,String rply)
	{
		
		try {
			Connection conn=connect();
			Statement st= conn.createStatement();
		int i=st.executeUpdate(" UPDATE complain SET Status = '1', Reply = '"+rply+"' WHERE complain.Id = '"+id+"'");
		//System.out.println(i+"  kamal   "+pass);
		if(i>0)
			return true;
		else {
			
		return false;
		}
		}
		catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return false;
		}
	}
}
