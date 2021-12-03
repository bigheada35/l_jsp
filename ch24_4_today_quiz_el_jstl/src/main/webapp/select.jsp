<%@page import="edu.kosmo.ex.dto.EmpDeptDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.kosmo.ex.dao.EmpDeptDao"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- 
    �̰��� �� �־�� �Ѵ�. 
    ������ �ױ׶��̺귯���� ���ڴ�.
    c��� �����Ƚ�
    ������ ���⿡ �ֵ�.
     -->
<%-- ����  ����  <% �� ���ʿ� �� �ٿ��� ���� --%>
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
                    <td>�����ȣ</td>
                    <td>����̸�</td>
                    <td>�μ���</td>
                    <td>�μ���ġ</td>
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