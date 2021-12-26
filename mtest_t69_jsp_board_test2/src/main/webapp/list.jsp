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

	<table width="500" border="1">
		
		
		
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.bid}
				</td>
				
				<td>${dto.bname}
				</td>
				
				<td>
					<c:forEach begin="1" end="${dto.indent}">[Re]
					</c:forEach>
					
					<a href = "context_view.jsp?bid=${dto.bid}">
						${dto.btitle}
					</a>
					
				</td>
				
				<td>${dto.bindent}
				</td>
			</tr>	
			</c:forEach>	
			
		
	
	
	</table>


</body>
</html>