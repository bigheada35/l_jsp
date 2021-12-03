<%@page import="edu.kosmo.ex.dto.EmpDeptDto"%>
<%@page import="edu.kosmo.ex.dao.EmpDeptDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	p

		 
		EmpDeptDao dao = new EmpDeptDao();
		ArrayList<EmpDeptDto> dtos = dao.empSelect();
		EmpDeptDto dto =null;
		System.out.println("dtos.size: " + dtos.size());
		for(int i =0; i< dtos.size(); i++){
			dto = dtos.get(i);
			out.print(dto.getEmpno() +"\t "+ dto.getEname() +"\t "+ dto.getJob() +"<br>");
		}
	%>
</body>
</html>