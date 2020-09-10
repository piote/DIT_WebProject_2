package csditcontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	
	public void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int Num1, Num2;
		int result;
		String Mid;
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		Num1 = Integer.parseInt(request.getParameter("num1")); 
		Num2 = Integer.parseInt(request.getParameter("num2")); 
		Mid = request.getParameter("Mid");
		result = calc(Num1, Num2, Mid);
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<h1>계산결과</h1>");
		out.println("<hr>");
		out.println(Num1 + " " + Mid + " " + Num2 + " = " + result); 
		out.println("</BODY></HTML>");
	}
	
	
	public int calc(int Num1, int Num2, String Mid) {
		int result = 0;
		if(Mid.equals("+"))
			result = Num1 + Num2;
		else if(Mid.equals("-"))
			result = Num1-Num2;
		else if(Mid.equals("*"))
			result = Num1 * Num2;
		else 
			result = Num1 / Num2;
		return result;
	}

}
