<%@page import="edu.kosmo.ex.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <!-- 
    이것을 꼭 넣어야 한다. 
    지시자 테그라이브러리를 쓰겠다.
    c라는 프레픽스
    문법은 여기에 있따.
     -->


<%-- 주의  주의  <% 는 왼쪽에 꼭 붙여서 쓰기 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <c:set> </c:set> 과 동일 --%> 
	<c:set var="name" value="홍길동"/>  <br>
	name: <c:out value="${name}"/>	 <br>
	name: ${name} <c:out value="${name}"/>	 <br>

	
	<c:remove var="name"/>
	두번째  name: ${name} <c:out value="${name}"/>	<br>
	
	<c:set var="name2">톰캣</c:set>	<br>
	name2: ${name2} <c:out value="${name2}" />;		<br>
	
	<%
		Member member2 = new Member("abcd", "1234");
		pageContext.setAttribute("member", member2);
	%>
	
	<hr>
	${member.id}
	${member.pw}
	<hr>
	
	<c:set target="${member}"  property="id"  value="박지성" />
	${member.id}
	${member.pw}
	
	<hr>		
	<c:if test="${10>20}" var="result">
		10은 20보다 크다  <br>
	</c:if>
	result : ${result} 	<br>

	<hr>		
	<c:if test="${10<20}" var="result">
		10은 20보다 크다  <br>
	</c:if>
	result : ${result} 	<br>

	<hr>
	<c:set var="userid" value="hello"/>
	userid: ${userid} <br>
	
	
	<c:choose>
		<c:when test="${userid=='admin'}">
			관리자 페이지
		</c:when>
		<c:otherwise>
			${userid}님 반갑습니다.
		</c:otherwise>
	</c:choose>
	
	<hr>
	<c:forEach var="i" begin="0" end="30" step="1">
		값은: ${i} <br>
	</c:forEach>
	
	<hr>
	<c:forEach var="i" begin="1" end="9" step="1">
		<c:forEach var="j" begin="1" end="9" step="1">
		${i} * ${j} =  ${i*j} <br>
		</c:forEach>
		<br>
	</c:forEach>
	
	<!-- 배열과 컬렉션프레임을 할꺼번에 받아 낼수 있다. -->
	<%
	pageContext.setAttribute("numList", 
			new String[]{"1","2","3","4","5"}); 
	%>
	<c:forEach var ="num2" items="${numList}">
		${num2} <br>
	</c:forEach>
	
	
	
</body>
</html>