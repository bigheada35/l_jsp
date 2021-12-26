package edu.kosmo.ex.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kosmo.ex.command.BCommand;
import edu.kosmo.ex.command.BListCommand;

/**
 * Servlet implementation class Bcontroller
 */
//sj	@WebServlet("/Bcontroller")
@WebServlet("/*.do")
public class Bcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//sj 	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("doPost");
		actionDo(request, response);//sj
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//sj doGet(request, response);
		
		System.out.println("doPost");
		actionDo(request, response);//sj
		
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		System.out.println("actionDo");
		
		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
		BCommand command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		System.out.println("---" + com);
		
		if(com.equals("/list.do")) {
			command = new BListCommand();
			command.execute(request,response);
			viewPage = "list.jsp";
		}
	}

}

