package edu.kosmo.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import edu.kosmo.ex.dto.BDto;

public class BDao {
	// 주의  javax.sql  안에 있는 것인,  커넥션 풀  데이터 객체
	private DataSource dataSource;
	
	public BDao() {
		try {
			//주의 javax.  안에 있는 것
			Context context= new InitialContext();
			
			// 주의 Servers --> Tomcat v9.0  --> context.xml 안에 정의된
			/*
		 	<Resource 
				auth="Container" 
				driverClassName="oracle.jdbc.OracleDriver" 
				maxIdle="10" 
				maxTotal="20" 
				maxWaitMillis="-1" 
				name="jdbc/oracle"
				password="tiger" 
				type="javax.sql.DataSource" 
				url="jdbc:oracle:thin:@127.0.0.1:1521:xe" 
				username="scott"
			/>	
			*/
			// 중에서 name="jdbc/oracle"  부분의 이름이 들어가도록 
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
			

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
	}
	
	
	public ArrayList<BDto> list(){
			ArrayList<BDto> dtos = new ArrayList<>();
			
			
			Connection con = null;
			PreparedStatement preSta = null;
			ResultSet rs = null;
			
			try {
				String query = "select * from mvc_board order by bGroup desc, bStep asc";
				
				// 예전 방법 , 커넥션 풀 안쓸때
				//Calss.forName(driver);
				
				con = dataSource.getConnection();
				preSta = con.prepareStatement(query);
				rs = preSta.executeQuery();
				
				while(rs.next()) {
					
					int bid			= rs.getInt("bid");
					String bname	= rs.getString("bname");
					String btitle	= rs.getString("btitle");
					String bcontent	= rs.getString("bcontent");
					Timestamp bdate	= rs.getTimestamp("bdate");
					int bhit		= rs.getInt("bhit");
					int bgroup		= rs.getInt("bgroup");
					int bstep		= rs.getInt("bstep");
					int bindent		= rs.getInt("bindent");
					
					BDto dto = new BDto(bid, bname, btitle, bcontent, bdate, bhit, bgroup,bstep, bindent);
					dtos.add(dto);
					
					
					
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					
				} catch (Exception e2) {
						e2.printStackTrace();
				}
			}
			
			
			
			return dtos;
	}
	
	
	
	
	
	
	
}
