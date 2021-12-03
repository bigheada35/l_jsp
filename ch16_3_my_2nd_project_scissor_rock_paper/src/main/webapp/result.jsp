<%@page import="edu.kosmo.ex.ScissorRockPaper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	ScissorRockPaper srp = null;
	
	String winner = null;
	String submit = null;
	String result = null;
	
	String myPng = null;
	String computerPng = null;
	String resultPng = null;
	
	final String scissorPng = "21.PNG";
	final String rockPng = "22.PNG";
	final String paperPng = "23.PNG";
	final String winPng = "31.PNG";
	final String losePng = "32.PNG";
	final String tiePng = "33.PNG";
	%>

	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	submit = request.getParameter("submit");
	
	System.out.println(submit);
	if(submit.equals("게임 하기")) {
		try {
			String personSelect = request.getParameter("scissor_rock_paper");
			
			System.out.println(personSelect);
			
			srp = new ScissorRockPaper(personSelect);
			winner = srp.getWinner();
			
			System.out.println("---"+srp.getMySelect());
			System.out.println("---"+srp.getComputerSelect());
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
		}
		
		if(srp.getMySelect().equals("가위")) {
			myPng = scissorPng;
		}else if(srp.getMySelect().equals("바위")) {
			myPng = rockPng;
		}else {
			myPng = paperPng;
		}
		
		if(srp.getComputerSelect().equals("가위")) {
			computerPng = scissorPng;
		}else if(srp.getComputerSelect().equals("바위")) {
			computerPng = rockPng;
		}else {
			computerPng = paperPng;
		}
		
		if(winner.equals("person")) {
			resultPng = winPng;
		}else if(winner.equals("computer")) {
			resultPng = losePng;
		}else {
			resultPng = tiePng;
		}
		
		if(winner.equals("person")) {
			result = "결과 : 유저가 이겼습니다.";
		}else if(winner.equals("computer")) {
			result = "결과 : 유저가 졌습니다.";
		}else {
			result = "결과 : 비겼습니다.";
		}
	}
	%>
	유저:
	<input type="image" src=<%=myPng%>>
	컴퓨터:
	<input type="image" src=<%=computerPng%>>
	<br>
	<input type="image" src=<%=resultPng%>>
	<br>
	<%=result%>
	
	<form action="start.jsp" method="post">
		<input type="submit" name="submit" value="다시 하기">
	</form>

</body>
</html>