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
		for(int i=0; i< cks.length ; i++){
			String nam = cks[i].getName();
			String val	= cks[i].getValue();
			System.out.print("=========" + nam + "," + val + "\n");
						
		}
	
	
	%>
</body>
</html>