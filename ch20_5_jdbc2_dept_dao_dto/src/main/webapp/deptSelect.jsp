

<%@page import="edu.kosmo.ex.dto.DeptDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.kosmo.ex.dao.DeptDao"%>
			 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%	//
		// 실무에서는 jsp 안에, new가 안보이게 해야 한다.
		//     설명을 위해서,, 사용함.
		//
		//   이제부터는 dao, dto 이런식으로 짠다 ~~!
		//
		DeptDao deptDao = new DeptDao();
		ArrayList<DeptDto> dtos = deptDao.empSelect();
		
		for(int i=0; i < dtos.size(); i++){
			DeptDto dto = dtos.get(i);

			out.print("부서번호: " + dto.getDeptno() + "<br>" + 
					"부서이름: " + dto.getDname() +  "<br>" +
					"위치: " + dto.getLoc() +  "<br>" +  "<br>" );
			
		}
		
	%>
</body>
</html>