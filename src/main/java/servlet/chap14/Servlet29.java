package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet29
 */
@WebServlet("/Servlet29")
public class Servlet29 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet29() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get request param
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam);
		
		// business logic
		String sql = "SELECT LastName, FirstName "
				+ "FROM Employees "
				+ "WHERE EmployeeID = ? ";

		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setInt(1, id);
			try (ResultSet rs = pstmt.executeQuery();) {

				if (rs.next()) {
					Employee e = new Employee();
					e.setLastName(rs.getString("LastName"));
					e.setFirstName(rs.getString("FirstName"));
					e.setId(id);

					request.setAttribute("employee", e);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// forward
		String path = "/WEB-INF/view/chap14/view12.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. request param 수집/가공
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);

		// 3. business logic
		String sql = "UPDATE Employees "
				+ "SET LastName = ?,"
				+ "    FirstName = ?"
				+ "WHERE EmployeeId = ? ";

		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, lastName);
			pstmt.setString(2, firstName);
			pstmt.setInt(3, id);

			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {
				// 4. add attribute
				HttpSession session = request.getSession();
				session.setAttribute("message", "직원 정보가 수정되었습니다.");
			}
			// 5. forward / redirect

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
