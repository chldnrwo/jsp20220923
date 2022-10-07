package servlet.chap17;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp20220923.chap07.Book;

/**
 * Servlet implementation class Servlet05
 */
@WebServlet("/Servlet05")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet05() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Book> list = List.of(
				new Book("justice", 500),
				new Book("selfish gene", 700),
				new Book("equal", 800)
				);
		//일한 결과를 객체에 담아서 
		request.setAttribute("bookList", list);
		//jsp로 forward
		String jspPath="/WEB-INF/view/chap17/view04.jsp";
		request.getRequestDispatcher(jspPath).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
