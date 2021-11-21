package edu.kosmo.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Rectangle
 */
@WebServlet("/rectangle")
public class Rectangle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rectangle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("--doGet--");
		//response.setContentType("UTF-8");
		
		//response.setContentType("text/html; charset=UTF-8");
		
		
		PrintWriter wr = response.getWriter();
		wr.println("<!DOCTYPE html>");
		wr.println("<html>");
		wr.println("<head>");
		wr.println("</head>");
		wr.println("<body>");
		
		wr.println("<form action=\"rectangle\" method=\"post\">");
		wr.println("<h1>사각형 가로세로 입력</h1>");
		wr.println("가로: <input type=\"text\" name=\"var_rec_width\" size=\"20\"><br>");
		wr.println("세로 : <input type=\"text\" name=\"var_rec_height\" size=\"20\"><br>");
		wr.println("<input type=\"submit\" value=\"post2_button_name\">");
		wr.println("</form>");
		
		String protocol = request.getParameter("protocol");
		wr.println("프로토콜 " + protocol);
		
		wr.println("</body>");
		wr.println("</html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//sj  doGet(request, response);
		System.out.println("--doPost--\n");
		//sj - test hangul
		response.setContentType("text/html; charset=UTF-8");
		
		Integer width = Integer.valueOf(request.getParameter("var_rec_width"));
		Integer height = Integer.valueOf(request.getParameter("var_rec_height"));
		
		PrintWriter wr = response.getWriter();
		wr.println("<!DOCTYPE html>");
		wr.println("<html>");
		wr.println("<head>");
		wr.println("</head>");
		wr.println("<body>");
		
		wr.println("<form action=\"rectangle\" method=\"post\">");

		wr.println("width :<input type=\"text\" name=\"var_width\" >");
		wr.println("ght :<input type=\"text\" name=\"var_height\">");
		wr.println("넓이 : " + width*height + "<br>");
		wr.println("space :<input type=\"text\" name=\"var_space\">");
		wr.println("<input type=\"submit\">");
		wr.println("</form>");
		
		wr.println("</body>");
		wr.println("</html>");
	}

}
