<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		int i = 10;
		String str = "ABCD";
	
	%>

	<%!
		public int sum(int a, int b){
			return a+b;
		}
	%>
	
	
	<%
		out.println("i=" + i + "<br>");
		out.println("str=" + str + "<br>");
		out.println("sum=" + sum(1,5) + "<br>");
		
		System.out.println("i=" + i );
		System.out.println("str=" + str );
		
	%>
	====== 주의 : 줄인 것  express 라고 부름,   out.print와 동일하다. 내부적으로는 
	out.print로 바뀐다.===<br>
	
	<!-- out.println("i=" + i + "<br>"); -->
	<%= i%><br>
	<%= str%><br>
	<%= sum(1,5)%><br>
	
	
	
	
</body>
</html>