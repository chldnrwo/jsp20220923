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
 * Servlet implementation class Servlet31
 */
@WebServlet("/Servlet31")
public class Servlet31 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet31() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// req param
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam);
		
		
		// logic
		String sql = "DELETE FROM Employees WHERE EmployeeID = ? ";
		String sql2 = "DELETE FROM Customers WHERE CustomerID = ? ";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);
				PreparedStatement pstmt2 = con.prepareStatement(sql2);) {
			
			pstmt.setInt(1, id);
			pstmt2.setInt(1, id);
			
			int cnt = pstmt.executeUpdate();
			int cnt2 = pstmt2.executeUpdate();
			if (cnt == 1) {
				request.getSession()
				.setAttribute("message", id + "번 직원이 삭제되었습니다.");
			}
			if (cnt2 == 1) {
				request.getSession()
				.setAttribute("message", id + "번 고객이 삭제되었습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// f / r
		
	
	}

}






