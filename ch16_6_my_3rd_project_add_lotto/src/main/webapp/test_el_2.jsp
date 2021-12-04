<%@page import="java.util.HashMap"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- 
이것을 꼭 넣어야 한다. 
지시자 테그라이브러리를 쓰겠다.
c라는 프레픽스
문법은 여기에 있따.
 -->
<%-- 주의  주의  <% 는 왼쪽에 꼭 붙여서 쓰기 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		HashMap<String, Object> mapData = new HashMap<String,Object>();
		mapData.put("name","최");
		mapData.put("name2","김");
		mapData.put("name3","이");
		mapData.put("name4","박");
		//mapData.put("today", new java.util.Data());
	%>
	
	<c:set var="intArray" value="<%= new int[]{111,222,3333,444,555} %>"/>
	<c:set var="map" value="<%=mapData%>" />
	
	<p>--1부터 100까지 홀수의 합</p>
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum+i}" />
	</c:forEach>
	결과: ${sum}
	
	<p>---구구단 4단---</p>
	<ul>
		<c:forEach var="i" begin="1" end="9">
			<li> 4* ${i} = ${4*i}</li>
		</c:forEach>
	</ul>
	
	<p>---int형 배열---</p>
	<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status">
		${status.index} - ${status.count} -[${i}] <br/>
	</c:forEach>
	<!-- 
	결과:
		2 - 1 -[3333]
		3 - 2 -[444]
		4 - 3 -[555]
	 -->
	<p>----map----</p>
	<c:forEach var="i" items="${map}" >
		${i.key} = ${i.value}<br>
	</c:forEach>
	
</body>
</html>