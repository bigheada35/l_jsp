<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- MemberInfo member = new edu.kosmo.ex.MemberInfo(); �� �ش�. -->

	<jsp:useBean id = "member"  class="edu.kosmo.ex.MemberInfo"/>

	<!-- member.setName("ȫ�浿"); --> 
	<jsp:setProperty  name = "member" property="name" value="ȫ�浿"/>
	<jsp:setProperty  name = "member" property="id" value="abc"/>
	<jsp:setProperty  name = "member" property="pw" value="1234"/>
	
		<%-- <%=member.getName() �� �ش�  %> --%>
	�̸�: <jsp:getProperty  name="member" property="name"/> <br/>
	���̵�: <jsp:getProperty  name="member" property="id"/> <br/>
	�н�����: <jsp:getProperty  name="member" property="pw"/> <br/>
		<!-- ���� : .name��  getName() ��  , Ŭ���� �ȿ� �ʵ� name�� �ƴ�
		�ʵ���� name�� private�̶� ���ٵ� �ʵ�. -->
	�̸�: ${member.name} <br/>
	���̵�: ${member.id} <br/>
	�н�����: ${member.pw} <br/>

	
	
</body>
</html>