<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- 페이지 지시자를 이용해서 예외처리 한다 -->
<%-- <%@ page errorPage = "errorPage.jsp" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int i = 40 / 0;
	%>
</body>
</html>