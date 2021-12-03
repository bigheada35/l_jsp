<%@page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	out.print("이름:" + request.getParameter("name") + "<br>");
	out.print("아이디:" + request.getParameter("id") + "<br>");
	out.print("비밀번호:" + request.getParameter("pwd") + "<br>");
	String[] arrayHobby = request.getParameterValues("hobby");
	out.print("취미:");
	out.print(Arrays.toString(arrayHobby)+ "<br>");
	out.print("전공: " + request.getParameter("major")+ "<br>");
	out.print("프로토콜 " + request.getParameter("protocol")+ "<br>");
	
	%>
</body>
</html>