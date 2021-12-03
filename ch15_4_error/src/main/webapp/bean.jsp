<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 페이지 지시자를 이용해서 예외처리 한다 -->
<%-- <%@ page errorPage = "errorPage.jsp" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 	<jsp:useBean 의 의미
	Student student = new Student(); --%>
	
	<jsp:useBean id="student" class="edu.kosmos.ex.Student"></jsp:useBean>
	
	
	<!-- 이것과 동일 하다. , 주의 : 받드시 닫는 tag잇어야 함 -->
	<%-- <jsp:useBean id=""/> --%>
	
	
	<!-- student.setName(13);의 의미임 --> 
	<jsp:setProperty  name="student" property="name"  value="13"/>
	<jsp:setProperty  name="student" property="age"  value="13"/>
	<jsp:setProperty  name="student" property="grade"  value="6"/>
	<jsp:setProperty  name="student" property="num"  value="7"/>
	
		
	이름: <jsp:getProperty  name="student" property="name"/>
	나이: <jsp:getProperty  name="student" property="age"/>
	학년: <jsp:getProperty  name="student" property="grade"/>
	번호: <jsp:getProperty  name="student" property="num"/>
	
</body>
</html>