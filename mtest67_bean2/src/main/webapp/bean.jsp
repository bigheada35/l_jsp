<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="student" class="edu.kosmo.ex.Student"></jsp:useBean>
	<jsp:setProperty name="student" property="name" value="홍길동" />
	<jsp:setProperty name="student" property="kor" value="90" />
	<jsp:setProperty name="student" property="eng" value="80" />
	<jsp:setProperty name="student" property="mat" value="79" />
		
	    이름 : <jsp:getProperty name="student" property="name" /><br />
        국어 : <jsp:getProperty name="student" property="kor" /><br />
        영어 : <jsp:getProperty name="student" property="eng" /><br />
        수학 : <jsp:getProperty name="student" property="mat" /><br />
        총점 : <jsp:getProperty name="student" property="tot" /><br />
        평균 : <jsp:getProperty name="student" property="avg" /><br />
</body>
</html>