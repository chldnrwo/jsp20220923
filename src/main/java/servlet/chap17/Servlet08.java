package servlet.chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet08
 */
@WebServlet(value ="/Servlet08",
	initParams = {
			@WebInitParam(name="userName", value="panther"),
			@WebInitParam(name="pw", value="1q2w3e")
	})
	

public class Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String name;
    private String pw;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet08() {
        super();
        // TODO Auto-generated constructor stub
    }
    //init 메소드 재정의
    //서블릿이 만들어지자마자 실행해야 하는 코드들 작성
    @Override
    public void init() throws ServletException {
    	System.out.println("서블릿08의 처음에 실행해야 하는 코드");
    	this.name = getInitParameter("userName");
    	this.pw = getInitParameter("pw");
    	
    	System.out.println(name+" "+pw);
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
