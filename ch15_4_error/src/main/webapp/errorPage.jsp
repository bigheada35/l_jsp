<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- 페이지 지시자를 이용해서 예외처리 한다 -->
    <%@ page isErrorPage="true" %>
    <%response.setStatus(200); %>
<%-- <%@ page errorPage = "errorPage.jsp" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	에러발생<br>
	<%=
	exception.getMessage()
	%>
</body>
</html>