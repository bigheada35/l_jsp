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
        <h2>가위 바위 보 를 선택하세요</h2>
         <input type="image" src="21.PNG" alt=""/>
        <input type="radio" name="scissor_rock_paper" value="가위"> 가위 <br>
      
        <input type="image" src="22.PNG" alt=""/>
        <input type="radio" name="scissor_rock_paper" value="바위"> 바위 <br>
        
        <input type="image" src="23.PNG" alt=""/>
        <input type="radio" name="scissor_rock_paper" value="보"> 보 <br><br>
        
        <input type="submit" name="submit" value="게임 하기"><br>
        <input type="reset" name="reset" value="다시 하기"><br>
    </form>

    
</body>
</html>