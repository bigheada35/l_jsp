package edu.kosmo.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet("/post")
public class PostMethod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostMethod() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		System.out.println("HelloWorld~~~~");
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter writer = response.getWriter();
		
		writer.println("<!DOCTYPE html>");
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1> 2 GET GET</h1>");
		//writer.println("---gugudan---\r\n");
		writer.println("---gugudan---<br>");
		for(int i=1; i<=9; i++) {
			for(int j=1; j<= 9; j++) {
				//writer.println(i+"*"+j+"="+i*j +"\r\n");
				writer.println(i+"*"+j+"="+i*j +"<br>");
			}
			//writer.println("\r\n");
			writer.println("<br>");
		}
		writer.println("</body>");
		writer.println("</html>");
		
		System.out.println("포스트 호출~~");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//sj-  doGet(request, response);
		
		System.out.println("HelloWorld~~~~");
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter writer = response.getWriter();
		
		writer.println("<!DOCTYPE html>");
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1> Post 방식 입니다.</h1>");
		//writer.println("---gugudan---\r\n");
		writer.println("---gugudan---<br>");
		for(int i=1; i<=9; i++) {
			for(int j=1; j<= 9; j++) {
				//writer.println(i+"*"+j+"="+i*j +"\r\n");
				writer.println(i+"*"+j+"="+i*j +"<br>");
			}
			//writer.println("\r\n");
			writer.println("<br>");
		}
		writer.println("</body>");
		writer.println("</html>");
		
		System.out.println("포스트 호출~~");
		
		
		
		
	}

}
