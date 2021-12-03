<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String submit = request.getParameter("submit");
	%>
	
	아이디: <%=id %><br>
	패스워드: <%=pw %><br>
	
	아이디: ${param.id}<br>
	패스워드:${param.pw }<br>


<!--
	objel.jsp에서 설정했던 값
	 
		pageContext.setAttribute("page_name", "page_value");
		request.setAttribute("request_name", "request_value");
		session.setAttribute("session_name", "session_value");
		application.setAttribute("application_name", "application_value");

 을 통해서 받은 것을 사용하는 것은 EL을 많이 쓴다. -->
		
			
  1	${applicationScope.application_name}<br>
  
2	${sessionScope.session_name}<br>


	<!-- 여기가 안나오는 이유 :  forward 해서 들어온 페이지가 아니라서,  메모리에서 사라졌다-->
3	${requestScope.request_name}<br>
 
 	<!-- 여기가 안나온 이유 :  페이지가 바뀌었기 때문에 안 나왔다.  -->
4	${pageScope.page_name}<br>

	
</body>
</html>