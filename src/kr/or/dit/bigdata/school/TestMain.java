package kr.or.dit.bigdata.school;

import java.sql.Connection;

import kr.or.dit.bigdata.school.util.ConnectionFactory;

public class TestMain {
	public static void main(String[] args) {
		
		Connection con = ConnectionFactory.getInstance();
		
		
		System.out.println(con);
	}
}
