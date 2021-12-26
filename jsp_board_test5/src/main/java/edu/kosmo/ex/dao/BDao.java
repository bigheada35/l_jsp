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
	
	private DataSource dataSource; // 커넥션풀,

	public BDao() {
		try {
			Context context= new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}
	
	
	public ArrayList<BDto> list(){
		ArrayList<BDto> dtos = new ArrayList<>();
		Connection con = null;
		PreparedStatement preSta = null;
		ResultSet rs = null;
		System.out.println("---Dao--1");
		try {
			String query = "select * from mvc_board order by bgroup desc, bstep asc";
			con = dataSource.getConnection();
			preSta = con.prepareStatement(query);
			rs = preSta.executeQuery();
			
			System.out.println("---Dao--2");
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
				
				System.out.println("---Dao--3");
				BDto dto = new BDto(bid, bname, btitle, bcontent, bdate, bhit, bgroup,bstep, bindent);
				dtos.add(dto);
				
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
							if(rs != null) rs.close();
							if(preSta != null) preSta.close();
							if(con!= null ) con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}

		}
		
		
		return dtos;
		
	}
	 
	
	
	
}
