package kr.or.dit.bigdata.school.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class jdbcUtil {
	public static void close(Connection con){
		if(con != null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			con = null;
			
		}
	}
	
	public static void close(Statement pstmt){
		if(pstmt != null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			pstmt = null;
		}
	}
	
	public static void close(ResultSet rs){
		if(rs != null){
			try {
				rs.close();
				rs = null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void close(ResultSet rs,Statement pstmt){
		close(rs);
		close(pstmt);
	}
}
