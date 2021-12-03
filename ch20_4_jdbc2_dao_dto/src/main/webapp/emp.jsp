
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
	

	Connection connection;
	Statement statement;
	ResultSet rs;
	//String query = "select * from emp";
	String query = "select * from emp where job='SALESMAN'";
	
	/* 주의 : 가능하면 복사해 붙여 넣자 */
	/* 주의 : 가능하면 복사해 붙여 넣자 */
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid ="scott";
	String upw ="tiger";	
	%>
	
	<%
	
	//  
	///         주의 :  실무에서는  jsp안에 객체를 생성하는 코드는 넣지 않는다.
	try{
		//
		// 객체 생성에 해당.
		//  오라클에서 제공하는  ojdbc6_g.jar  안에 있는
		// "oracle.jdbc.driver.OracleDriver"  클래스를  메모리로 올린다.
		//  <-동적 객체 생성이라 부른다.
		Class.forName(driver);
		//
		connection = DriverManager.getConnection(url, uid, upw);
		//
		statement=connection.createStatement();
		//
		rs = statement.executeQuery(query);
		//
		while(rs.next()){
			String ename = rs.getString("ename");
			String job = rs.getString("job");
			int empno = rs.getInt("empno");
			
			out.print("이름" + ename + "<br>" + "사원번호: " + empno +  "<br>" + "직종" + job );
	
		}
		
	}catch(Exception e){
		e.printStackTrace();
		
	}finally{
		try{
			if(connection != null)	connection.close();
			if(statement != null)	statement.close();
			if(rs != null)	rs.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
</body>
</html>