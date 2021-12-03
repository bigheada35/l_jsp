<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
        Cookie cookie = new Cookie("CookieN","CookieV"); //쿠키객체생성
        cookie.setMaxAge(60*60); //쿠키 시간 설정
        
        response.addCookie(cookie);
%>
<a href="cookie_get.jsp">cookie get</a>

</body>
</html>