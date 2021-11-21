package edu.kosmo.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Grade
 */
@WebServlet("/grade")
public class Grade extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Grade() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		Student stu = new Student(request.getParameter("name1"),
				request.getParameter("kor1"),
				request.getParameter("eng1"),
				request.getParameter("mat1"));
		
		
		//request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("MS949");
		//response.setCharacterEncoding("EUC-KR");
		//request.setCharacterEncoding("EUC-KR");
		
		//System.out.println("---"+request.getCharacterEncoding());
		//request.setCharacterEncoding("UTF-8");
		//System.out.println("---"+request.getCharacterEncoding());
		
		PrintWriter wr = response.getWriter();
		
		wr.println("<!DOCTYPE html>");
		wr.println("<html lang=\"en\">");
		wr.println("<head>");
		wr.println("<meta charset=\"UTF-8\">");
		wr.println("</head>");
		wr.println("<body>");
		
		wr.println("<br> name : ");
		wr.println(stu.name() + "<br>");
		wr.println("<br> average : ");
		wr.println(stu.average() + "<br>");
		wr.println("<br> total : ");
		wr.println(stu.total() + "<br>");
		
		wr.println("</body>");
		wr.println("</html>");
				
	}

}
