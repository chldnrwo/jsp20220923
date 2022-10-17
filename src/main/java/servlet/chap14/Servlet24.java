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

import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet24
 */
@WebServlet("/Servlet24")
public class Servlet24 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet24() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1 리퀘스트파라미터 수집
		String keyword = request.getParameter("q");
		
		// 2 파라미터 가공
		if (keyword == null) {
			keyword = "";
		}
		
		keyword = "%" + keyword + "%";
		
		// 3. business logic
		String sql = "SELECT LastName, FirstName "
				+ "FROM Employees "
				+ "WHERE FirstName LIKE ? "
				+ "   OR LastName LIKE ? ";
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			
			try (ResultSet rs = pstmt.executeQuery();) {
				// rs에서 데이터 꺼내고
				List<Employee> list = new ArrayList<>();
				while (rs.next()) {
					Employee e = new Employee();
					e.setFirstName(rs.getString("firstName"));
					e.setLastName(rs.getString("lastName"));
					
					list.add(e);
				}
				
				// attribute 추가
				request.setAttribute("employeeList", list);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// forward/ redirect
		request.getRequestDispatcher("/WEB-INF/view/chap14/view05.jsp")
			.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
