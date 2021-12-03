package edu.kosmo.ex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.jsp.tagext.TryCatchFinally;

import edu.kosmo.ex.dto.EmpDto;

public class EmpDao {

	private String driver = "oracle.jdbc.driver.OracleDriver";
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "scott";
	private String upw = "tiger";
	
	
	public EmpDao() {
		super();
	}
	
	public ArrayList<EmpDto> empSelect(){
		
		
		ArrayList<EmpDto> dtos = new ArrayList<>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			String query = "select * from emp";
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, uid, upw);
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				
				EmpDto dto = new EmpDto(empno, ename, job);
				
				dtos.add(dto);
			}
			
			
		} catch (Exception e) {
		}finally {
			try {
				if(con != null)	con.close();
				if(stmt != null)  stmt.close();
				if(rs != null)  rs.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}

		}
		
		return dtos;
	}
	
	
	
}
