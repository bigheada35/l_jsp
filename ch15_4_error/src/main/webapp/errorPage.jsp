<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- ������ �����ڸ� �̿��ؼ� ����ó�� �Ѵ� -->
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
	�����߻�<br>
	<%=
	exception.getMessage()
	%>
</body>
</html>