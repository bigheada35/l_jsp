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
	Cookie ck = new Cookie("ID", "test1");
	//response.addCookie(ck);
	pageContext.setAttribute("name","페이지el테스트");
	request.setAttribute("temp123","el테스트");
	request.setAttribute("name","name_el테스트");
	request.setAttribute("title","el테스트");
	//List<Long> values=Arrays.asList(1L, 2L, 5L, 10L);
	//request.setAttribute("vals", values);
	
	%>
	<br>1,${pageContext.request.requestURI}
	<br>2,${requestScope.name }
	<br>3,${parm.code }
	<br>6,${cookie.ID.value}
	<br>7,${ID}
	<br>8,${temp}
	<br>9,${requestScope.temp123}
	<br>10,${"10"+1}
	<br>11,${"제목:" += title}
	<br><c:set var="vals" values="${1,2,5,10}" />
	<br>12,${sum(vals)}
	
</body>
</html>