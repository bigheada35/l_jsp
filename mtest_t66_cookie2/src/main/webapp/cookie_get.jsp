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
  		Cookie[] cks = request.getCookies();
  		for(Cookie ck : cks){
  			out.println(ck.getName() +" - "  + ck.getValue() + "<br>");
  		}
%>
</body>
</html>