<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
 <!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



	<!-- Student student = new edu.kosmo.ex.Student(); -->
	<%-- <jsp:useBean id="student" class="edu.kosmo.ex.Student" scope ="page" ></jsp:useBean> --%>
	<jsp:useBean id="student" class="edu.kosmo.ex.Student" ></jsp:useBean>


	<jsp:setProperty name="student"  property = "name" value="ȫ�浿" />
	<jsp:setProperty name="student"  property = "kor" value="90" />
	<jsp:setProperty name="student"  property = "eng" value="80" />
	<jsp:setProperty name="student"  property = "mat" value="90" />
	
	<!-- ���� property�� ��� �� ������ �ʵ尪�� �ش��Ѵ�, �޼ҵ�� �ƴϴ�. -->
	<%-- <jsp:setProperty name="student"  property = "getTot" value="0" /> --%>
	
	<jsp:setProperty name="student"  property = "tot" value="0" />
	
	
	�̸�: <jsp:getProperty  name="student" property="name"/>	
	����: <jsp:getProperty  name="student" property="kor"/>
	����: <jsp:getProperty  name="student" property="eng"/>
	����: <jsp:getProperty  name="student" property="mat"/>
	����: <jsp:getProperty  name="student" property="tot"/>
	���: <jsp:getProperty  name="student" property="avg"/>
	
	
	


</body>
</html>