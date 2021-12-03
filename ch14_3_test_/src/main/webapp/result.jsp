<%@page import="edu.kosmo.ex.Circle"%>
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
	
	out.print("반지름:" + request.getParameter("radius") + "<br>");
	
	int radius = Integer.valueOf(request.getParameter("radius"));
	
	Circle cir = new Circle(radius);	
	out.print("원의넓이는:" + cir.getSpace()+ "<br>") ;
	
	%>

</body>
</html>