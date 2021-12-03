package edu.kosmo.ex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import edu.kosmo.ex.dto.EmpDeptDto;

public class EmpDeptDao {

	ArrayList<EmpDeptDto> dtos = new ArrayList<>();

	private String driver = "oracle.jdbc.driver.OracleDriver";
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "scott";
	private String upw = "tiger";
	
	public EmpDeptDao() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public ArrayList<EmpDeptDto> select(){
			
			Connection con = null;
			Statement sta= null;
			ResultSet  rs = null;
	
			try {
String query = "select empno, ename, dname, loc from emp, dept where emp.deptno =dept.deptno";
				con = DriverManager.getConnection(url, uid, upw);
				sta = con.createStatement();
				rs = sta.executeQuery(query);
	
				while(rs.next()) {
					int empno = rs.getInt("empno");
					String ename;
					String dname;
					String loc;
					
					EmpDeptDto dto = new EmpDeptDto(rs.getInt("empno"),
										rs.getString("ename"),
										rs.getString("dname"),
										rs.getString("loc")
									);
					dtos.add(dto);
					
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				try {
					
					if(rs!=null) rs.close();
					if(sta!=null) sta.close();
					if(con!=null) con.close();
					
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			
					
					
		
			return dtos;
	}
	
	
	
}
