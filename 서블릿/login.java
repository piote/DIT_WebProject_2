package csdit.ch03;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//세션 만들기
		HttpSession s= request.getSession();
		//사용자 입력 정보 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		s.setAttribute("id", id);
		s.setAttribute("pw", pw);
		
		response.sendRedirect("login.jsp");
		
	}

}

