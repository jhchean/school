package kr.or.dit.bigdata.school.dto;

public class Student {
	private int studId;
	private String name;
	private String email;
	private String dob;
	
	public Student() {}
	
	public Student(int studId, String name, String email, String dob) {
		this.studId = studId;
		this.name = name;
		this.email = email;
		this.dob = dob;
	}
	
	public int getStudId() 				{ return studId;}
	public void setStudId(int studId) 	{ this.studId = studId;}
	public String getName() 			{ return name;}
	public void setName(String name) 	{ this.name = name;	}
	public String getEmail() 			{ return email;	}
	public void setEmail(String email) 	{ this.email = email;}
	public String getDob() 				{ return dob;}
	public void setDob(String dob) 		{ this.dob = dob;}
	
}
