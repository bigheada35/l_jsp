<%@page import="edu.kosmo.ex.dao.EmpDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.kosmo.ex.dto.EmpDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  


</head>
<body>
	<jsp:useBean id="empDao" class="edu.kosmo.ex.dao.EmpDao"> </jsp:useBean>
	<%!String ename;
	String job;
	int deptno;%>
	<%
		
		//EmpDao dao = new EmpDao();
	
	
		//ArrayList<EmpDto> dtos = dao.empSelect();
		//ArrayList<EmpDto> dtos = dao.getDtos();
		ArrayList<EmpDto> dtos = empDao.empSelect();
		
		System.out.println("=========9==========:" + dtos.size());
		for(int i=0; i< dtos.size(); i++){
			EmpDto dto = dtos.get(i);
			System.out.println(dto.getEname() + ", " + dto.getJob() + ", " + dto.getDeptno());
			
			// 그냥 뿌리지 말고, table  부트스트랩의 테이블  뿌려 보기.
			//out.print(dto.getEname() + ", " + dto.getJob() + ", " + dto.getDeptno());
				
				ename = dto.getEname();
				job = dto.getJob();
				deptno = dto.getDeptno();
			// 그냥 뿌리지 말고, table  부트스트랩의 테이블  뿌려 보기.
			// 자주 연습하자, 잘 않된다..
			%>
	    <ul class="list-group list-group-horizontal">
            <li class="list-group-item"><%=ename%></li>
            <li class="list-group-item"><%=job%></li>
            <li class="list-group-item"><%=deptno%></li>
        </ul>
			<%			
			
		}
	%>
	
	
	
</body>
</html>