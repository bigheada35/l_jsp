<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
 <!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



	<!-- Student student = new edu.kosmo.ex.Student(); -->
	<%-- <jsp:useBean id="student" class="edu.kosmo.ex.Student" scope ="page" ></jsp:useBean> --%>
	<jsp:useBean id="student" class="edu.kosmo.ex.Student" ></jsp:useBean>


	<jsp:setProperty name="student"  property = "name" value="홍길동" />
	<jsp:setProperty name="student"  property = "kor" value="90" />
	<jsp:setProperty name="student"  property = "eng" value="80" />
	<jsp:setProperty name="student"  property = "mat" value="90" />
	
	<!-- 주의 property에 들어 갈 내용은 필드값에 해당한다, 메소드는 아니다. -->
	<%-- <jsp:setProperty name="student"  property = "getTot" value="0" /> --%>
	
	<jsp:setProperty name="student"  property = "tot" value="0" />
	
	
	이름: <jsp:getProperty  name="student" property="name"/>	
	국어: <jsp:getProperty  name="student" property="kor"/>
	영어: <jsp:getProperty  name="student" property="eng"/>
	수학: <jsp:getProperty  name="student" property="mat"/>
	총점: <jsp:getProperty  name="student" property="tot"/>
	평균: <jsp:getProperty  name="student" property="avg"/>
	
	
	


</body>
</html>