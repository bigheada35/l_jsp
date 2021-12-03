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
	Cookie[] ckis = request.getCookies();
	
	for(int i=0; i<ckis.length ; i++){
		System.out.println("name: "+ ckis[i].getName() + ", ");
		System.out.println("value: " + ckis[i].getValue());
		System.out.println();
	}
	%>
</body>
</html>