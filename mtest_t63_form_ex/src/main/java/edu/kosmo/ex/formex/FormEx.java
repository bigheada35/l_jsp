package edu.kosmo.ex.formex;

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
		//sj doGet(request, response);
		
		//------------------------- 주의 : Encoding 및 헤더 및 바디 테그까지 넣어 줘야 한글이 안깨진다.
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//------------------------- 주의 : Encoding 및 헤더 및 바디 테그까지 넣어 줘야 한글이 안깨진다.
		
		PrintWriter pw = response.getWriter();
		//------------------------- 주의 : Encoding 및 헤더 및 바디 테그까지 넣어 줘야 한글이 안깨진다.
		pw.println("<!DOCTYPE html>");
		pw.println("<html lang=\"en\">");
		pw.println("<head>");
		pw.println("<meta charset=\"UTF-8\">");
		pw.println("</head>");
		pw.println("<body>");
		//------------------------- 주의 : Encoding 및 헤더 및 바디 테그까지 넣어 줘야 한글이 안깨진다.
		
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pw");
		String[] hobby = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String protocol = request.getParameter("protocol");
		
		
		pw.println("이름 :" + name + "<br>");
		pw.println("아이디 : " + id+ "<br>");
		pw.println("비밀번호 :" + pwd+ "<br>");
		
		for (String string : hobby) {
			pw.println("취미 : " + string+ "<br>");
		}
		
		pw.println("전공 : " + major+ "<br>");
		pw.println("프로토콜 : " + protocol+ "<br>");
				
		//------------------------- 주의 : Encoding 및 헤더 및 바디 테그까지 넣어 줘야 한글이 안깨진다.
		pw.println("</body>");
		pw.println("</html>");
		//------------------------- 주의 : Encoding 및 헤더 및 바디 테그까지 넣어 줘야 한글이 안깨진다.
	}

}


/*
 결과 : 
 
이름 :홍길동
 아이디 : hkd
비밀번호 :1234567890
취미 : read
취미 : cook
취미 : run
취미 : swim
취미 : sleep
전공 : eng
프로토콜 : ftp 

 */

