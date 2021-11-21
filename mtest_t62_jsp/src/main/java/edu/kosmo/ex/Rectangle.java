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
		System.out.println("doGet");
		
		PrintWriter wr = response.getWriter();
		wr.println("<!DOCTYPE html>");
		wr.println("<html lang=\"en\">");
		wr.println("<head>");
		wr.println("</head>");
		wr.println("<body>");
		wr.println("<form action=\"rectangle\" method=\"post\">");
		wr.println("width: <input type=\"text\" name=\"var_w\"> <br>");
		wr.println("height: <input type=\"text\" name=\"var_h\"> <br>");
		//wr.println("space: <input type=\"text\" name=\"var_s\"> <br>");
		wr.println("space: "  + " <br>");
		wr.println("<input type=\"submit\">");
		wr.println("</form>");
		wr.println("</body>");
		wr.println("</html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost");
		
		Integer wid = Integer.valueOf(request.getParameter("var_w"));
		Integer hid = Integer.valueOf(request.getParameter("var_h"));
		
		PrintWriter wr = response.getWriter();
		wr.println("<!DOCTYPE html>");
		wr.println("<html lang=\"en\">");
		wr.println("<head>");
		wr.println("</head>");
		wr.println("<body>");
		wr.println("<form action=\"rectangle\" method=\"post\">");
		wr.println("width: <input type=\"text\" name=\"var_w\"> <br>");
		wr.println("height: <input type=\"text\" name=\"var_h\"> <br>");
		wr.println("space: " + wid*hid+ " <br>");
		wr.println("<input type=\"submit\">");
		wr.println("</form>");
		wr.println("</body>");
		wr.println("</html>");
	}

}
