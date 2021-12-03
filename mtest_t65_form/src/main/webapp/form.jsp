<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp">
		이름:<input type="text" name="name"><br>
		아이디:<input type="text" name="id"><br>
		비밀번호: <input type="password" name="pwd"><br>
		취미 : <input type="checkbox" name="hobby" value="read">독서
			<input type="checkbox" name="hobby" value="cook">요리
			<input type="checkbox" name="hobby" value="run">조깅
			<input type="checkbox" name="hobby" value="swim">수영
			<input type="checkbox" name="hobby" value="sleep">취침
		전공 : <input type="radio" name="major" value="kor">국어<br>		
		<input type="radio" name="major" value="eng" checked="checked">영어
		<input type="radio" name="major" value="kor">수학
		<input type="radio" name="major" value="kor">디자인<br>
		
		<select name="protocol">
			<option value="ftp" selected="selected">
			<option value="smtp">
		</select>
	     <br>
	     
	     <input type="submit">
	     <input type="reset">
	     
		
		
	</form>
</body>
</html>