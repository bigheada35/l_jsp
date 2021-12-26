package edu.kosmo.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import edu.kosmo.ex.dto.Dto;

public class Dao {
		
	private DataSource dataSource;
	
	
	
	
	public Dao() {
		
		try {
			Context context = new InitialContext();
			
			dataSource = (DataSource) context.lookup("java:com/env/jdbc/oracle");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}




	public ArrayList<Dto> list(){
		ArrayList<Dto> dtos = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement preSta = null;
		ResultSet rs = null;
		
		try {
			String query = "select * from mvc_board";
			con = dataSource.getConnection();
			preSta = con.prepareStatement(query);
			rs = preSta.executeQuery();
			
			int	bid = rs.getInt("bid");
			String bname = rs.getString("bname");
			String btitle = rs.getString("btitle");
			String bcontent = rs.getString("bcontent");
			String bdate = rs.getString("bdate");   
			int bhit = rs.getInt("bhit");    
			int bgroup = rs.getInt("bgroup");  
			int bstep = rs.getInt("bstep");   
			int bindent = rs.getInt("bindent");
			
			Dto dto = new Dto(bid,bname,btitle,bcontent,bdate,bhit,bgroup,bstep,bindent);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				if(rs!=null) rs.close();
				if(preSta!=null) preSta.close();
				if(con!=null) con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return dtos; 
	}
}
