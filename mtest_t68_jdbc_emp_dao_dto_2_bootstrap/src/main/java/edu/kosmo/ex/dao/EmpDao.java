package edu.kosmo.ex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import edu.kosmo.ex.dto.EmpDto;

public class EmpDao {

	ArrayList<EmpDto> dtos = new ArrayList<>();
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "scott";
	private String upw = "tiger";
	
	
	
	
	public ArrayList<EmpDto> getDtos() {
		return dtos;
	}

	public void setDtos(ArrayList<EmpDto> dtos) {
		this.dtos = dtos;
	}

	public EmpDao() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
		}
		
		
	}
	
	public ArrayList<EmpDto> empSelect(){
		Connection co= null;
		Statement st= null;
		ResultSet rs= null;
		
		System.out.println("====1====================");
		
		try {
			System.out.println("====21====================");
			co = DriverManager.getConnection(url, uid, upw);
			System.out.println("====22====================");
			
			
			st = co.createStatement();
			System.out.println("====31====================");
			
			// 주의 :   쿼리 글짜를 잘 틀린다..  --;
			// 주의 :   쿼리 글짜를 잘 틀린다..  T.T;
			rs = st.executeQuery("select * from emp");
			System.out.println("===41=====================");
			while(rs.next()) {
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				int deptno = rs.getInt("deptno");
					
				EmpDto dto = new EmpDto(ename, job, deptno);
				
				System.out.println(ename +","+ job +","+ deptno);
				
				dtos.add(dto);
			}
			
		} catch (Exception e) {
		
			
			
		}finally {
			
			try {
				if(rs !=null) rs.close();
				if(st != null) st.close();
				if(co != null)  co.close();
			} catch (Exception e2) {
			}
			
		}
		
		
		
		return dtos;
		
		
		
	}
	
}
