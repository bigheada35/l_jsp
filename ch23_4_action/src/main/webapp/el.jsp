<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- MemberInfo member = new edu.kosmo.ex.MemberInfo(); 에 해당. -->

	<jsp:useBean id = "member"  class="edu.kosmo.ex.MemberInfo"/>

	<!-- member.setName("홍길동"); --> 
	<jsp:setProperty  name = "member" property="name" value="홍길동"/>
	<jsp:setProperty  name = "member" property="id" value="abc"/>
	<jsp:setProperty  name = "member" property="pw" value="1234"/>
	
		<%-- <%=member.getName() 에 해당  %> --%>
	이름: <jsp:getProperty  name="member" property="name"/> <br/>
	아이디: <jsp:getProperty  name="member" property="id"/> <br/>
	패스워드: <jsp:getProperty  name="member" property="pw"/> <br/>
		<!-- 주의 : .name은  getName() 임  , 클래스 안에 필드 name이 아님
		필드안의 name은 private이라 접근도 않됨. -->
	이름: ${member.name} <br/>
	아이디: ${member.id} <br/>
	패스워드: ${member.pw} <br/>

	
	
</body>
</html>