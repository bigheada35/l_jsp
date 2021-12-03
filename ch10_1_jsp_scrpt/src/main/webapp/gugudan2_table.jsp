<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<%!int i, j;
	%>
	<h2>구구단</h2>
	<table border="4">	
		<tr>
			<%
			for(i=2 ; i<=9; i++){
			%>
			<td> <%=i %>단 </td>
			<%}
			%>
		</tr><br>
		
		
			<%
			for(j=1; j<=9; j++){
			%>
				<tr>
				<%
				for(i=2 ; i<=9; i++){
				%>
					<td> <%=i%> X <%=j %> = <%=i*j %></td>
			<%	
				}
			%>
				</tr><br>
			<%	
			}
			%>	
	
	</table>
	
	
	<br><br>========test 2 , using bootstrap ======<br>
	<h2>구구단</h2>
	<table class="table table-bordered table-hover table-striped table-dark">
			<thead class="thead-dark">	
				<tr>
					<%
					for(i=2 ; i<=9; i++){
					%>
					<td> <%=i %>단 </td>
					<%}
					%>
				</tr>
			</thead>
		<br>
		
		<tbody>
			<%
			for(j=1; j<=9; j++){
			%>
				<tr class="table-primary">
				<%
				for(i=2 ; i<=9; i++){
				%>
					<td> <%=i%> X <%=j %> = <%=i*j %></td>
			<%	
				}
			%>
				</tr><br>
			<%	
			}
			%>	
	 	</tbody>
	</table>
	
	
</body>
</html>