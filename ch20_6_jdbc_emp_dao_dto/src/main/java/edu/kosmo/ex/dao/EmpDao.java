package edu.kosmo.ex.dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import edu.kosmo.ex.dto.EmpDto;

public class EmpDao {
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "scott";
	private String upw = "tiger";
	
	public EmpDao() {
		super();
		
		try {
			Class.forName(driver);
		} catch (Exception e) {
			
		}
		
		
	}
	
	public ArrayList<EmpDto> empSelect(){
		ArrayList<EmpDto> dtos = new ArrayList<EmpDto>();
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			String query = "select * from emp";
			con = DriverManager.getConnection(url, uid, upw);
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String hiredate = rs.getString("hiredate");
				int sal = rs.getInt("sal");
				int com = rs.getInt("comm");
				int deptno = rs.getInt("deptno");
				
			
				EmpDto dto = new EmpDto(empno, ename, hiredate, sal, com, deptno);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(con != null)	con.close();
				if(con != null) stmt.close();
				if(rs != null) rs.close(); 
			} catch (Exception e2) {
				e2.printStackTrace();

			}
		}
		
		
		
		return dtos;
	}
	
	
	
}
