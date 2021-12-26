package edu.kosmo.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx
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
		
		//doGet(request, response);
		
		
		//--------------------------------------------- 
		//이상한것이 UTF-8 만 설정을 하고, <html 태그  <head 가 없으면 글씨가 깨진다.
		//
		//---------------------------------------------
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter pw = response.getWriter();
		
		pw.println("<!DOCTYPE html>");
		pw.println("<html lang=\"en\">");
		pw.println("<head>");
		pw.println("<meta charset=\"UTF-8\">");
		pw.println("</head>");
		pw.println("<body>");
		//------------------------------------------------
		
		pw.print(request.getParameter("name") + "\n");
		pw.print(request.getParameter("id") + "\n");
		pw.print(request.getParameter("pw") + "\n");
		
		String[] hobbys = request.getParameterValues("hobby");
		for(String hobby : hobbys) {
			pw.print(hobby + "\n");
		}
		
		pw.print(request.getParameter("protocol") + "\n");
		
		
		//------------------------------------------------
		pw.println("</body>");
		pw.println("</html>");
		//------------------------------------------------
		
		
		
		
				
	}

}
