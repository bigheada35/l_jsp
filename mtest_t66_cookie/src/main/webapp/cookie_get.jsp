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
		Cookie[] cookies = request.getCookies();
		for(int i =0; i<cookies.length ; i++){
			System.out.println("----" + cookies[i].getName() + "," + cookies[i].getValue() + "\n");
			%>
				<p>cookies,    <%=cookies[i].getName() %>,   <%=cookies[i].getValue() %><br>
				</p>
			<%
		}
	%>
	
	
</body>
</html>