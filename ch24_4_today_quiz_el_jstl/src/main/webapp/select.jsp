<%@page import="edu.kosmo.ex.dto.EmpDeptDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.kosmo.ex.dao.EmpDeptDao"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
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
<meta charset="EUC-KR">
<title>Insert title here</title>



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  


</head>
<body>
	<%
	EmpDeptDao  dao = new EmpDeptDao(); 
	ArrayList<EmpDeptDto> dtos = dao.select();
	pageContext.setAttribute("dtos2", dtos);
	//for(EmpDeptDto dto : dtos){
	// out.print(dto);			
	//}
	%>
	
	
	
	
	    <table class="table table-bordered table-hover table-striped table-dark">

            <thead class="thead-dark">
                <tr>
                    <td>사원번호</td>
                    <td>사원이름</td>
                    <td>부서명</td>
                    <td>부서위치</td>
                </tr>
            </thead>   

            <tbody>
            
	            <c:forEach var="dto" items="${dtos2}">
		            
		                <tr class="table-primary">
		                    <td>${dto.empno}</td>
		                    <td>${dto.ename}</td>
		                    <td>${dto.dname}</td>
		                    <td>${dto.loc}</td>
		                </tr>
	                
				</c:forEach>
            

            </tbody>

        </table>
	
	
	
	
	
</body>
</html>