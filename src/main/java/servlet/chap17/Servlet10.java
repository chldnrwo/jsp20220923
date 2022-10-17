package servlet.chap17;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp20220923.chap07.Book;

/**
 * Servlet implementation class Servlet10
 */
@WebServlet(value={"/Servlet10", "/filter/servlet10"})
public class Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private List<Book> bookdb;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet10() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
		List<Book> list = (List<Book>) application.getAttribute("bookdb");
		if (list == null) {
			list = new ArrayList<>();
			application.setAttribute("bookdb", list);
		}
		
		this.bookdb = list;
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 일하고
		// db에서 꺼내기
		List<Book> list = bookdb;
		
		// attribute 추가하고
		request.setAttribute("bookList", list);
		
		// view06.jsp 로 포워드
		String path = "/WEB-INF/view/chap17/view06.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");
		// 1. 일하고
		
		// 1-1. 리퀘스트 파라미터 꺼내고
		// jsp 의 form에서 전송 버튼을 클릭하면
		// post 방식 요청이 와서
		// 이 메소드가 실행될 수 있도록 코드 작성
		String title = request.getParameter("title");
		String priceStr = request.getParameter("price");
		
		System.out.println("제목:" + title);
		System.out.println("가격:" + priceStr);
		
		// 1-2. 꺼낸 파라미터 가공하고
		int price = Integer.parseInt(priceStr);
		
		// 1-3. 나머지 일
		// db에 추가 (application 객체로 시늉만 함...)
		bookdb.add(new Book(title, price));
		
		// 2. attribute 추가하고
		String message = "새로운 책이 등록되었습니다.";
		request.setAttribute("message", message);
		request.setAttribute("bookList", bookdb);
		
		// 3. forward/redirect
//		String path = "/WEB-INF/view/chap17/view06.jsp";
//		request.getRequestDispatcher(path).forward(request, response);
		
		String redirectPath = request.getContextPath() + "/Servlet10";
		response.sendRedirect(redirectPath);
	}
	
	/*
		doGet/doPost (Request Handler Method)
		
		1. 파라미터 꺼내기
		
		2. 파라미터 가공
		
		3. 일함(보통 db관련일)
		
		4. 결과 추가 (attribute 추가)

		5. forward / redirect
	 * 
	 */

}





