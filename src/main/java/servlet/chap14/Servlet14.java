package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet14
 */
@WebServlet("/Servlet14")
public class Servlet14 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet14() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName FROM Customers WHERE CustomerID = '3'";
		
		// 2. 데이터베이스 커넥션 구하기
		ServletContext application = request.getServletContext();
		
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try {
			Connection con = DriverManager.getConnection(url, user, pw);
			
			// 3. 쿼리 실행을 위한 statement 객체 생성
			Statement stmt = con.createStatement();
			
			// 4. 쿼리실행
			ResultSet rs = stmt.executeQuery(sql);
				
			// 5. 실행결과 사용(가공)
			
			if(rs.next()) {
				String name = rs.getString(1);
				System.out.println(name);
				
				request.setAttribute("name", name);	
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		String path= "/WEB-INF/view/chap14/view02.jsp";
		request.getRequestDispatcher(path).forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
