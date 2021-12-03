<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="edu.kosmo.ex.dto.EmpDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="empDao" class="edu.kosmo.ex.dao.EmpDao"></jsp:useBean>
<%-- 	${empDao.dtos} --%>
<%-- 	${empDao.out} --%>
	<%
	ArrayList<EmpDto> dtos2 = empDao.getDtos();
		session.setAttribute("emp", dtos2);
		
		ArrayList<EmpDto> dtos = (ArrayList<EmpDto>)session.getAttribute("emp");
		for(EmpDto mpDto: dtos){
			out.print("--emp_select.jsp--" + mpDto + "<br>");
		}
			
	/* 	for(int i=0; i<dtos.size(); i++){
			EmpDto dto = dtos.get(i);
			out.print("--" + dto.getEname() + ", " + dto.getJob() + ", " + dto.getDeptno() + "<br>");
		} */
		
		//session.invalidate();
	%>
</body>
</html>