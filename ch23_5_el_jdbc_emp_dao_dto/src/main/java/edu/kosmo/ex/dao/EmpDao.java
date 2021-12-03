package edu.kosmo.ex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.websocket.Session;

import edu.kosmo.ex.dto.EmpDto;

public class EmpDao {

		private String driver = "oracle.jdbc.driver.OracleDriver";
		
		private String url = "jdbc:oracle:thin:@localhost:1521:xe";
		private String uid = "scott";
		private String upw = "tiger";
		
		ArrayList<EmpDto> dtos = new ArrayList<>();
				
		String out = null;
		
		public EmpDao() {
			try {
				Class.forName(driver);	
			} catch (Exception e) {

			}
			
		}

		public ArrayList<EmpDto> getDtos() {
			
			empSelct();
			
			return dtos;
		}

		public void setDtos(ArrayList<EmpDto> dtos) {
			this.dtos = dtos;
		}

	
		public String getOut() {
			EmpDto dto = null;
			for(int i=0; i<dtos.size(); i++) {
				dto = dtos.get(i);
				
				out += dto.getEmpno() + ",  ";
				out += dto.getEname() + ",  ";
				out += dto.getJob() + ",  ";
				out += dto.getMgr() + ",  ";
				out += dto.getHiredate() + ",  ";
				out += dto.getSal() + ",  ";
				out += dto.getComm() + ",  ";
				out += dto.getDeptno() + "<br>";
			}
			
			return out;
		}

		public void setOut(String out) {
			this.out = out;
		}

		public void empSelct(){
			
			
			
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try {
				
				con = DriverManager.getConnection(url, uid, upw);
				stmt = con.createStatement();
				rs = stmt.executeQuery("select * from emp");
				
				System.out.println("------------1");
				while(rs.next()) {
					
					 int empno = rs.getInt("empno");
					 String ename = rs.getString("ename");
					 String job = rs.getString("job");
					 int mgr = rs.getInt("mgr");
					 String hiredate =  rs.getString("hiredate");
					 int sal = rs.getInt("sal");
					 int comm = rs.getInt("comm");
					 int deptno = rs.getInt("deptno");
					 
					 System.out.println(
							 			empno + "," +
					 					ename + ", " +
							 			job + "," +
							 			mgr + "," +
							 			hiredate + "," +
							 			sal + "," +
							 			comm + "," +
							 			deptno);
					 EmpDto dto = new EmpDto(empno, ename, job, 
							 mgr, hiredate, sal, comm, deptno);
					 
					 
					 dtos.add(dto);
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				try {
					if(rs!=null) rs.close();
					if(stmt!=null) stmt.close();
					if(con!=null) con.close();
				} catch (Exception e2) {
				
				}
				
			}
			
			
			
			
			

		}
}
