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
	DataSource ds = null;
	 
	public BDao() {
		Context context = null;
		
		try {
			context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	public ArrayList<BDto> list(){
		ArrayList<BDto> dtos = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			System.out.println("--list 1");
			
			con = ds.getConnection();
			System.out.println("--list 12");
			
			//ps = con.prepareStatement("select * from mvc_boad order by bgroup desc, bstep asc");
			// 주의 스펠빠트림.
			ps = con.prepareStatement("select * from mvc_board order by bgroup desc, bstep asc");
			rs = ps.executeQuery();
			System.out.println("--list 2");
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
				
				System.out.println("--list3");
				
				BDto dto = new BDto(bid, bname, btitle, bcontent, bdate, bhit, bgroup,bstep, bindent);
				dtos.add(dto);
				
				System.out.println(bid+" "+bname+" "+btitle 
						);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				if(rs!=null) rs.close();
				if(ps!=null) ps.close();
				if(con!=null) con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
		return dtos;
	}
			
}
