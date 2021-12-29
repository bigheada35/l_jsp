package edu.kosmo.ex.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kosmo.ex.command.BCommand;
import edu.kosmo.ex.command.BContentCommand;
import edu.kosmo.ex.command.BDeleteCommand;
import edu.kosmo.ex.command.BListCommand;
import edu.kosmo.ex.command.BListCommand3;
import edu.kosmo.ex.command.BModifyCommand;
import edu.kosmo.ex.command.BReplyCommand;
import edu.kosmo.ex.command.BReplyViewCommand;
import edu.kosmo.ex.command.BWriteCommand;

/**
 * Servlet implementation class BController
 */


//@WebServlet("/BController")
// 전자 정부 프레임 이 이렇게 쓴다고 함.
@WebServlet("*.do")
public class BController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//지우고,, response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
		actionDo(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//지우고, doGet(request, response);
		
		System.out.println("doGet");
		actionDo(request,response);

	}

	//이것을 추가함.  반드시  throws ServletException, IOException  것도 넣으시요..
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("actionDo");
		
		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
		BCommand command = null;
	
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		System.out.println("---    " + com);
		
		//---- test :  list.do
		if(com.equals("/list.do")) {
			command = new BListCommand();
			command.execute(request, response);
			//viewPage = "list.jsp";
			viewPage = "list2.jsp";
			System.out.println("--2-");
		}
		
		//page 	---- test :  list3.do?pageNum=1&amount=10
		if(com.equals("/list3.do")) {
			command = new BListCommand3();
			command.execute(request, response);
			//viewPage = "list.jsp";
			viewPage = "list3.jsp";
			System.out.println("--2-");
		}
		
		System.out.println("--3-");
		
		if(com.equals("/write_view.do")) {
			viewPage = "write_view.jsp";
		}
		
		if(com.equals("/write.do")) {
			command = new BWriteCommand();
			command.execute(request, response);
			// 주의  list.jsp 가 아니고, list.do 임
			viewPage = "list.do";
		}
		if(com.equals("/write3.do")) {
			command = new BWriteCommand();
			command.execute(request, response);
			// 주의  list.jsp 가 아니고, list.do 임
			viewPage = "list3.do";
		}
		
		if(com.equals("/content_view.do")) {
			command = new BContentCommand();
			command.execute(request, response);
			//viewPage = "content_view.jsp";
			viewPage = "content_view2.jsp";
			
			command = new BListCommand();
			command.execute(request, response);
		}
		//page 	---- 
		if(com.equals("/content_view3.do")) {
			command = new BContentCommand();
			command.execute(request, response);
			//viewPage = "content_view.jsp";
			viewPage = "content_view3.jsp";
			
			command = new BListCommand3();
			command.execute(request, response);
		}		
		
		if(com.equals("/modify.do")){
			command = new BModifyCommand();
			command.execute(request, response);
			viewPage = "list.do"; 
		}
		//--- 삭제---
		if(com.equals("/delete.do")){
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do"; 
		}
		if(com.equals("/delete3.do")){
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "list3.do"; 
		}		
		//--------
		if(com.equals("/reply_view.do")){
			command = new BReplyViewCommand();
			command.execute(request, response);
			//viewPage = "reply_view.jsp"; 
			viewPage = "reply_view2.jsp"; 
		}
		if(com.equals("/reply.do")){
			command = new BReplyCommand();
			command.execute(request, response);
			viewPage = "list.do"; 
		}
		//--------
		if(com.equals("/modify_or_reply.do")){
			
			String action = request.getParameter("action");

			if ("수정".equals(action)) {
				//modify.do
				command = new BModifyCommand();
				command.execute(request, response);
				viewPage = "list.do"; 
			} else if ("답변".equals(action)) {
				//reply.do
				command = new BReplyCommand();
				command.execute(request, response);
				viewPage = "list.do"; 
			}
		}
		if(com.equals("/modify_or_reply3.do")){
			
			String action = request.getParameter("action");

			if ("수정".equals(action)) {
				//modify.do
				command = new BModifyCommand();
				command.execute(request, response);
				viewPage = "list3.do"; 
			} else if ("답변".equals(action)) {
				//reply.do
				command = new BReplyCommand();
				command.execute(request, response);
				viewPage = "list3.do"; 
			}
		}	
		
		
		//--- 핵심 코드 2 
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
		
	}
	
	
}
