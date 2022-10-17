package servlet.chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp20220923.chap07.Book;

/**
 * Servlet implementation class Servlet11
 */
@WebServlet(value={"/Servlet11", "/filter/servlet11"})
public class Servlet11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet11() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request parameter 수정
		String bookidParam = request.getParameter("bookid");
		//request parameter 가공
		int bookid = Integer.parseInt(bookidParam);
		//business basic
		//db에서 책 id가 1인 책 정보 얻어오기
		
		Book book = null;
		switch (bookid) {
		case 1:
			book = new Book("java", 500);
			break;
		case 2:
			book = new Book("spring", 700);
		default:
			break;
		}
			
		//add attribute
		request.setAttribute("book", book);
		//forward / redirect
		String path="/WEB-INF/view/chap17/view07.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String priceParam = request.getParameter("price");
		
		int price = Integer.parseInt(priceParam);
		Book book = new Book(title,price);
		
		insertBook(book);
		
		request.getSession().setAttribute("message", "데이터 베이스에 새 책 등록함");
		
		String path = request.getContextPath() + "/Servlet11?bookid=1";
		response.sendRedirect(path);
	}

	private void insertBook(Book book) {
		System.out.println("데이터베이스에 새 책 등록함!!");
	}
	
		

}
