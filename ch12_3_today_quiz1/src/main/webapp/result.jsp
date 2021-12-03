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
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat"); 
	double total = (Integer.valueOf(kor) + Integer.valueOf(eng) + Integer.valueOf(mat))/(double)3;
	%>
	국어:<%=kor%><br>
	영어:<%=eng%><br>
	수학:<%=mat%><br>
	평균: <%=total%><br>
		
</body>
</html>