package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
 * Servlet implementation class Servlet23
 */
@WebServlet("/Servlet23")
public class Servlet23 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet23() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 파라미터 수집 / 가공
		String keyword = request.getParameter("keyword");
		
		if (keyword == null) {
			keyword = "";
		}
		
		keyword = "%" + keyword + "%";
		
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerName LIKE ?";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, keyword);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				
				List<Customer> list = new ArrayList<>();
				while (rs.next()) {
					Customer c = new Customer();
					c.setName(rs.getString("customerName"));
					c.setContactName(rs.getString("contactName"));
					c.setAddress(rs.getString("address"));
					c.setId(rs.getInt("customerId"));
					c.setCity(rs.getString("city"));
					c.setCountry(rs.getString("country"));
					
					list.add(c);
				}
				
				request.setAttribute("customers", list);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/view07.jsp";
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
