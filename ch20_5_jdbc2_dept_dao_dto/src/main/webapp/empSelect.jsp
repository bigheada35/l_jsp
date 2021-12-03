

<%@page import="edu.kosmo.ex.dto.EmpDeptDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.kosmo.ex.dao.EmpDeptDao"%>
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
		//
				// 실무에서는 jsp 안에, new가 안보이게 해야 한다.
				//     설명을 위해서,, 사용함.
				//
				//   이제부터는 dao, dto 이런식으로 짠다 ~~!
				//
				EmpDeptDao empDao = new EmpDeptDao();
				ArrayList<EmpDeptDto> dtos = empDao.empSelect();
				
				for(int i=0; i < dtos.size(); i++){
			EmpDeptDto dto = dtos.get(i);

			out.print("이름" + dto.getEname() + "<br>" + 
					"사원번호: " + dto.getEmpno() +  "<br>" +
					"직종" + dto.getJob() +  "<br>" +  "<br>" );
			
				}
		%>
</body>
</html>