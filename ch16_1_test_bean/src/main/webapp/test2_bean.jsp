<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="student" class="edu.kosmo.ex.Student2"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>

	
	<jsp:setProperty name="student"  property = "name" value="홍길동" />
	<jsp:setProperty name="student"  property = "kor" value="90" />
	<jsp:setProperty name="student"  property = "eng" value="80" />
	<jsp:setProperty name="student"  property = "mat" value="90" />
	<jsp:setProperty name="student"  property = "tot" value="0" />
	<jsp:setProperty name="student"  property = "avg" value="0" />
	
	
	이름: <jsp:getProperty  name="student" property="name"/>	<br/>
	국어: <jsp:getProperty  name="student" property="kor"/>	<br/>
	영어: <jsp:getProperty  name="student" property="eng"/>	<br/>
	수학: <jsp:getProperty  name="student" property="mat"/>	<br/>
	총점: <jsp:getProperty  name="student" property="tot"/>	<br/>
	평균: <jsp:getProperty  name="student" property="avg"/>	<br/>

	
	
</body>
</html>