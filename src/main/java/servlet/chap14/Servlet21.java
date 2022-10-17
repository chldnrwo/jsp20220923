package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

import domain.chap14.Product;

/**
 * Servlet implementation class Servlet21
 */
@WebServlet("/Servlet21")
public class Servlet21 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet21() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. request param 수집
		String id = request.getParameter("id");
		// 2. request param 가공
		
		// 3. query 실행(business logic)
		String sql = "SELECT ProductName, Price "
				+ "FROM Products "
				+ "WHERE ProductId = " + id;
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
		
			// 4. add attribute
			List<Product> list = new ArrayList<>();
			while (rs.next()) {
				Product p = new Product();
				p.setName(rs.getString("productName"));
				p.setPrice(rs.getDouble("price"));
				
				list.add(p);
			}
			
			request.setAttribute("products", list);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 5. forward / redirect
		String view = "/WEB-INF/view/chap14/view09.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
