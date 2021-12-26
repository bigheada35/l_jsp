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
	private DataSource ds;
	
	
	public BDao() {
		try {
			
			Context ct = new InitialContext();
			
			//ds = (DataSource)ct.lookup("java:comp/env/jdbc/oracle");
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

	}
	
	public ArrayList<BDto> list(){
		// 이번에는 new를 안해줘서, 망했네.~~
		ArrayList<BDto> dtos = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			
			
			con = ds.getConnection();
			
			
			
			String query = "select * from mvc_board order by bgroup desc, bstep asc";
			 //ps = dataSource.getConnection();.prepareStatement("select * from mvc_board order by bgroup desc, bstep asc");
			
			ps = con.prepareStatement(query);
			 System.out.println("---3");
			 rs = ps.executeQuery();
			 
			 
			 
				while(rs.next()) {
					
					int bid = rs.getInt("bid");
					String bname = rs.getString("bname");
					String btitle = rs.getString("btitle");
					String bcontent = rs.getString("bcontent");
					Timestamp bdate = rs.getTimestamp("bdate");
					int bhit = rs.getInt("bhit");
					int bgroup = rs.getInt("bgroup");
					int bstep = rs.getInt("bstep");
					int bindent = rs.getInt("bindent");
					
					//BDto dto = new BDto(bid, bname, btitle,bcontent, bdate, bhit,bgroup, bstep, bindent);
					BDto dto = new BDto(bid, bname, btitle, bcontent, bdate, bhit, bgroup,bstep, bindent);
					
					System.out.println("--- bid: " + bid +"---bname : " + bname + "," + btitle);
					
					dtos.add(dto);
					
				} 
				System.out.println("--2- ");
				
			 
			 
			 
			 
			 
			 
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}

		
		
	
		
		return dtos;
	}	
	
	
}
