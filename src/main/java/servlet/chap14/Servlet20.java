package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet20
 */
@WebServlet("/Servlet20")
public class Servlet20 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet20() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr =request.getParameter("id");
		idStr = idStr == null ? "0" : idStr;
		
		int id=Integer.parseInt(idStr); 
		
		String sql = "SELECT CustomerID, CustomerName, Address, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerId = ? ";
		
		ServletContext application = request.getServletContext();
		
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try {
			Connection con = DriverManager.getConnection(url, user, pw);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			List<Customer> list = new ArrayList<Customer>(); 
			
			while(rs.next()) {
				Customer c = new Customer();
				c.setId(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setAddress(rs.getString(3));
				c.setCity(rs.getString(4));
				c.setCountry(rs.getString(5));
				
				list.add(c);
				
			}
			request.setAttribute("customer", list);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		String path = "/WEB-INF/view/chap14/view08.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
