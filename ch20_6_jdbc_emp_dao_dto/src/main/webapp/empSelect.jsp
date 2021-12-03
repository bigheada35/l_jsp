<%@page import="edu.kosmo.ex.dto.EmpDeptDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.kosmo.ex.dao.EmpDeptDao"%>
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
			for(int i=0; i<dtos.size(); i++){
		EmpDeptDto dto = dtos.get(i);
		
		out.print(
			dto.getEmpno() + "\t" +
			dto.getEname() + "\t" +
			dto.getHiredate()+ "\t" +
			dto.getSal()+ "\t" +
			dto.getCom()+ "\t" +
			dto.getDeptno()+ "<br>" 
		);
		
			}
	%>
</body>
</html>