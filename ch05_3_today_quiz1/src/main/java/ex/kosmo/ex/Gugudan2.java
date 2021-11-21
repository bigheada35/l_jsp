package ex.kosmo.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Gugudan2
 */
@WebServlet("/gugu")
public class Gugudan2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gugudan2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//sj - add
		response.getWriter().append("<br>");
		Integer dan = Integer.valueOf(request.getParameter("var_gugudan2"));
		
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter wr = response.getWriter();
		wr.println("<!DOCTYPE html>");
		wr.println("<html>");
		wr.println("<head>");
		wr.println("</head>");
		wr.println("<body>");

		wr.println("<table border=\"1\">");
		wr.println("<tr>");
		String title = String.valueOf(dan) + " dan";
		wr.println("<td colspan=\"2\">"+ title + "</td>");
		wr.println("</tr>");
		for(int i=1; i<=9; i++) {
			String row1 = String.valueOf(dan + " x " + i);
			String row2 = String.valueOf(dan*i);
			
			wr.println("<tr>");	
			wr.println("<td>"+row1+"</td>");
			wr.println("<td>"+row2+"</td><br>");
			wr.println("</tr>");			
		}
		wr.println("</table>");
		
		
		
		
		wr.println("</body>");
		wr.println("</html>");
		
		
		System.out.println("get 호출~~" );	
				
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
