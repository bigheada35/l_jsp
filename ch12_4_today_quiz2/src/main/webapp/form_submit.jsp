<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp" method="post">
		이름: <input type="text" name="name"><br>
		아이디: <input type="text" name="id"><br>
		비밀번호: <input type="password" name="pwd"><br>
		취미 : <input type="checkbox" name="hobby" value="read" >독서
			<input type="checkbox" name="hobby" value="cook">요리
			<input type="checkbox" name="hobby" value="run">조깅
			<input type="checkbox" name="hobby" value="swim">수영
			<input type="checkbox" name="hobby" value="sleep">취침<br>
			<input type="radio" name="major" value="kor">국어
			<input type="radio" name="major" value="eng" checked="checked">영어
			<input type="radio" name="major" value="mat">수학
			<input type="radio" name="major" value="design">디자인<br>
			
			<select name="protocol">
				<option value="ftp" selected="selected">ftp</option>
				<option value="http" >http</option>
				<option value="smtp" >smtp</option>
			</select><br>
			<input type="submit" value="send">
			<input type = "reset" value="reset"> 
	</form>	
</body>
</html>