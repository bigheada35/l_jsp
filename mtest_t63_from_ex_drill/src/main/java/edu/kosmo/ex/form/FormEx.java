package edu.kosmo.ex.form;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Form
 */
@WebServlet("/FormEx")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx() {
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
		
		////////////////////
////////////////////
////////////////////
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
////////////////////
////////////////////
////////////////////
		//doGet(request, response);
		PrintWriter pw = response.getWriter();
		
		pw.print(request.getParameter("name") + "\n");
		pw.print(request.getParameter("id")+ "\n");
		pw.print(request.getParameter("pw")+ "\n");
	
		String[] hobbys = request.getParameterValues("hobby");
		for(String hobby : hobbys) {
			pw.print(hobby+ "\n");
		}
	
		pw.print(request.getParameter("major")+ "\n");
		pw.print(request.getParameter("protocol")+ "\n");

	}

}
