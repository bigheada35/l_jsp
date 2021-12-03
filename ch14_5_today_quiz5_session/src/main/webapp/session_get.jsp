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
	Object obj = session.getAttribute("sessionName");
	String str = (String)obj;
	System.out.println(str);
	
	Object obj2 = session.getAttribute("myNum");
	Integer val = (Integer)obj2;
	System.out.println(val);
	
	
	
	%>
</body>
</html>