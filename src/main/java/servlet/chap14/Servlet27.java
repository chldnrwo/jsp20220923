package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet27
 */
@WebServlet("/Servlet27")
public class Servlet27 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet27() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// forward
		String path = "/WEB-INF/view/chap14/view10.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. request parameter 수집
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		// 2. 가공
		
		// 3. business logic (insert into)
		String sql = "INSERT INTO Employees (FirstName, LastName) "
				+ "VALUES (?, ?)";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, firstName);
			pstmt.setString(2, lastName);
			
			int cnt = pstmt.executeUpdate();
			
			// 4. 결과 확인 (or add attribute)
			
			// 5. forward / redirect
			if (cnt == 1) {
				String path = request.getContextPath() + "/Servlet24";
				response.sendRedirect(path);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}






