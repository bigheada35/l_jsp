<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="student" class="edu.kosmo.ex.Student"></jsp:useBean>
	<jsp:setProperty name="student" property="name" value="ȫ�浿" />
	<jsp:setProperty name="student" property="kor" value="90" />
	<jsp:setProperty name="student" property="eng" value="93" />
	<jsp:setProperty name="student" property="mat" value="89" />
	
	    �̸� : <jsp:getProperty name="student" property="name"/><br />
        ���� : <jsp:getProperty name="student" property="kor" /><br />
        ���� : <jsp:getProperty name="student" property="eng" /><br />
        ���� : <jsp:getProperty name="student" property="mat" /><br />
        ���� : <jsp:getProperty name="student" property="tot" /><br />
        ��� : <jsp:getProperty name="student" property="avg" /><br />
</body>
</html>