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
		
		//------------------------- ���� : Encoding �� ��� �� �ٵ� �ױױ��� �־� ��� �ѱ��� �ȱ�����.
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//------------------------- ���� : Encoding �� ��� �� �ٵ� �ױױ��� �־� ��� �ѱ��� �ȱ�����.
		
		PrintWriter pw = response.getWriter();
		//------------------------- ���� : Encoding �� ��� �� �ٵ� �ױױ��� �־� ��� �ѱ��� �ȱ�����.
		pw.println("<!DOCTYPE html>");
		pw.println("<html lang=\"en\">");
		pw.println("<head>");
		pw.println("<meta charset=\"UTF-8\">");
		pw.println("</head>");
		pw.println("<body>");
		//------------------------- ���� : Encoding �� ��� �� �ٵ� �ױױ��� �־� ��� �ѱ��� �ȱ�����.
		
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pw");
		String[] hobby = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String protocol = request.getParameter("protocol");
		
		
		pw.println("�̸� :" + name + "<br>");
		pw.println("���̵� : " + id+ "<br>");
		pw.println("��й�ȣ :" + pwd+ "<br>");
		
		for (String string : hobby) {
			pw.println("��� : " + string+ "<br>");
		}
		
		pw.println("���� : " + major+ "<br>");
		pw.println("�������� : " + protocol+ "<br>");
				
		//------------------------- ���� : Encoding �� ��� �� �ٵ� �ױױ��� �־� ��� �ѱ��� �ȱ�����.
		pw.println("</body>");
		pw.println("</html>");
		//------------------------- ���� : Encoding �� ��� �� �ٵ� �ױױ��� �־� ��� �ѱ��� �ȱ�����.
	}

}


/*
 ��� : 
 
�̸� :ȫ�浿
 ���̵� : hkd
��й�ȣ :1234567890
��� : read
��� : cook
��� : run
��� : swim
��� : sleep
���� : eng
�������� : ftp 

 */

