<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! int i,j;
	%>
		<table border="1">	
		<tr><%
			for(i=1; i<=9; i++){
			%>
				<td>
				<%=i %>��
				</td>
			<%
			}
			%>
		</tr>
		<%
		for(j=1; j<=9; j++){
		%>
			<tr>
			<%	
			for(i=1; i<=9; i++){
			%>
			
				<td>
				<%=i%> X <%=j %> = <%=(i*j)%>
				</td>
				
			<%	
			}
			%>
			</tr>
			<br>			
			<%	
		}
		%>
		</table>
	
	
</body>
</html>