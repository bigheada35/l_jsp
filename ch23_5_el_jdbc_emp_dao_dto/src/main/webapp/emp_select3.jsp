
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="edu.kosmo.ex.dto.EmpDto"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<%-- 주의  주의  <% 는 왼쪽에 꼭 붙여서 쓰기 --%>
 <!-- 주의  이것 넣고, lib도 넣어야 함. 꼭 --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="empDao" class="edu.kosmo.ex.dao.EmpDao"></jsp:useBean>
<%-- ${empDao.dtos} --%>
<%-- ${empDao.out} --%>
	<%
	/*  	ArrayList<EmpDto> dtos2 = empDao.getDtos();
		session.setAttribute("emp", dtos2);  */
		
		ArrayList<EmpDto> dtos = (ArrayList<EmpDto>)session.getAttribute("emp");
		for(EmpDto mpDto: dtos){
			out.print(mpDto + "<br>");
		}
		
	/*
		for(int i=0; i<dtos.size(); i++){
			EmpDto dto = dtos.get(i);
			out.print("--" + dto.getEname() + ", " + dto.getJob() + ", " + dto.getDeptno() + "<br>");
		} 
	*/
		//session.invalidate();
	%>
	<hr>
	<hr>
	<hr>

<%-- 주의 :   꼭 lib 넣어야 함,   <%@ taglib  정의 부분도  꼭 사용 하기.  --%>
	<%
	// 이것은  dtos를  EL로 사용하기 위해서,  사용함.
	//pageContext.setAttribute("emp2", dtos); 
	%>

	<c:forEach var="dto" items="${emp}">
		<%System.out.println("--5--");%>
		${dto.empno} ${dto.ename} <br>
	</c:forEach>
	
</body>
</html>