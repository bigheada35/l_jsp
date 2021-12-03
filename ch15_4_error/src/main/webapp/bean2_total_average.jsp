<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 	<jsp:useBean 의 의미
	Student student = new Student(); --%>
	
	<jsp:useBean id="student2" class="edu.kosmos.ex.Student2"></jsp:useBean>
	
	
	<!-- 이것과 동일 하다. , 주의 : 받드시 닫는 tag잇어야 함 -->
	<%-- <jsp:useBean id=""/> --%>
	
	
	<!-- student.setName(13);의 의미임 --> 
	<jsp:setProperty  name="student2" property="name"  value="홍길동"/>
	<jsp:setProperty  name="student2" property="kor"  value="13"/>
	<jsp:setProperty  name="student2" property="eng"  value="6"/>
	<jsp:setProperty  name="student2" property="math"  value="7"/>
	<jsp:setProperty  name="student2" property="tot"  value="0"/>
	<jsp:setProperty  name="student2" property="avg"  value="0"/>
	
		<%!
			int kor , eng, math;
			double tot, avg;
			String name;
		%>
	이름: <jsp:getProperty  name="student2" property="name"/>
	
		<% kor = student2.getKor();
		eng = student2.getEng();  
		math = student2.getMath(); 
		tot = kor + eng + math;
		avg = tot/(double)3;
		%>
		
	국어: <%=kor %>
	<%-- <jsp:getProperty  name="studen2t" property="kor"/> --%>
	영어: <jsp:getProperty  name="student2" property="eng"/>
	수학: <jsp:getProperty  name="student2" property="math"/>
	
	총점: <%-- <jsp:getProperty  name="student2" property="tot"/> --%>
		<%=tot %><br>
	
	평균: <%-- <jsp:getProperty  name="student2" property="avg"/> --%>
		<%=avg %><br>
	
	
	
</body>
</html>