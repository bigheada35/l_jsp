package edu.kosmo.ex.scissor_rock_paper;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScissorRockPaper
 */
@WebServlet("/scissor_rock_paper2")
public class ScissorRockPaperGame2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScissorRockPaperGame2() {
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
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter pw = response.getWriter();
		
		//-------------------//
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset=\"UTF-8\">");
		pw.println("<title>Document</title>");
		pw.println("</head>");
		pw.println("<body>");
		//-------------------//
		String submit = request.getParameter("submit");
		System.out.println(submit);
		if(submit.equals("게임 하기")) {

			try {
				String personSelect = request.getParameter("scissor_rock_paper");
				System.out.println(personSelect);
				ScissorRockPaper srp = new ScissorRockPaper(personSelect);
				String winner = srp.getWinner();
				
				
				System.out.println("---"+srp.getMySelect());
				System.out.println("---"+srp.getComputerSelect());
				
				//pw.println("유저  : " + srp.getMySelect()+" " );
				pw.println("유저:");
				if(srp.getMySelect().equals("가위")) {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\21.PNG\" alt=\"\"/>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263502-87f4d6e2-6f38-4701-9a1c-f23b27538ef8.PNG\">");
				}else if(srp.getMySelect().equals("바위")) {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\22.PNG\" alt=\"\"/>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263492-1f18d69a-736f-4ad6-8045-b24fc2edee2e.PNG\">");
				}else {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\23.PNG\" alt=\"\"/>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263500-d6c8c39a-5978-4bdd-be7f-f3cef6a16009.PNG\">");
				}
				
				//pw.println("컴퓨터 : " + srp.getComputerSelect()+" " );
				pw.println("컴퓨터:");
				if(srp.getComputerSelect().equals("가위")) {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\21.PNG\" alt=\"\"/>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263502-87f4d6e2-6f38-4701-9a1c-f23b27538ef8.PNG\">");
				}else if(srp.getComputerSelect().equals("바위")) {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\22.PNG\" alt=\"\"/>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263492-1f18d69a-736f-4ad6-8045-b24fc2edee2e.PNG\">");
				}else {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\23.PNG\" alt=\"\"/>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263500-d6c8c39a-5978-4bdd-be7f-f3cef6a16009.PNG\">");
				}
				pw.println("<br>");
				if(winner.equals("person")) {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\31.PNG\" alt=\"\"/><br>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143265794-8b679862-11c4-431e-bd76-db2ebd444d27.PNG\">");
					pw.println("결과 : 유저가 이겼습니다.<br>" );
					
				}else if(winner.equals("computer")) {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\32.PNG\" alt=\"\"/><br>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143265797-7fab0eb0-2c94-4bba-b05b-876d909f4417.PNG\">");
					pw.println("결과 : 유저가 졌습니다.<br>" );
					
				}else {
					
					//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\33.PNG\" alt=\"\"/><br>");
					pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143265802-0cb84998-73f1-4cc3-802f-93114292aa9c.PNG\">");
					pw.println("결과 : 비겼습니다.<br>" )	;
				}
				
				
			}catch(Exception e) {
				pw.println("<h2>선택을 하고 시작하세요.</h2><br>" );
				pw.println("<form action=\"scissor_rock_paper2\"method=\"post\">");
				pw.println("<input type=\"submit\" name=\"submit\" value=\"다시 하기\"><br>");
				pw.println("</form>");
				pw.println("</body>");
				pw.println("</html>");
				e.printStackTrace();
			}finally {

			}
			

			
			pw.println("<form action=\"scissor_rock_paper2\"method=\"post\">");
			pw.println("<input type=\"submit\" name=\"submit\" value=\"다시 하기\"><br>");
			//pw.println("<input type=\"reset\" name=\"reset\" value=\"다시 하기\"><br>");
			pw.println("</form>");
			
		}else {
			pw.println("<form action=\"scissor_rock_paper2\"method=\"post\">");
			pw.println("<h2>가위 바위 보 를 선택하세요</h2>");
			
			//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\21.PNG\" alt=\"\"/>");
			pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263502-87f4d6e2-6f38-4701-9a1c-f23b27538ef8.PNG\">");
			pw.println("<input type=\"radio\" name=\"scissor_rock_paper\" value=\"가위\"> 가위 <br>");
			
			//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\22.PNG\" alt=\"\"/>");
			pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263492-1f18d69a-736f-4ad6-8045-b24fc2edee2e.PNG\">");
			pw.println("<input type=\"radio\" name=\"scissor_rock_paper\" value=\"바위\"> 바위 <br>");
			
			//pw.println("<input type=\"image\" src=\"C:\\Users\\swj\\eclipse-workspace\\java1\\t4b_grade_student_today_quiz1\\src\\main\\webapp\\23.PNG\" alt=\"\"/>");
			pw.println("<input type=\"image\" src=\"https://user-images.githubusercontent.com/91854280/143263500-d6c8c39a-5978-4bdd-be7f-f3cef6a16009.PNG\">");
			pw.println("<input type=\"radio\" name=\"scissor_rock_paper\" value=\"보\"> 보 <br><br>");
			
			
			pw.println("<input type=\"submit\" name=\"submit\" value=\"게임 하기\"><br>");
			pw.println("<input type=\"reset\" name=\"reset\" value=\"다시 하기\"><br>");
			pw.println("</form>");
		}
		//-------------------//
		pw.println("</body>");
		pw.println("</html>");
		//-------------------//
		
	}

}
