package edu.kosmo.ex;

public class Student {
	private String name, kor, eng, mat;
	public Student(String name, String kor, String eng, String mat) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}
	public String name() {
		return this.name;
	}
	
	public String average() {
		String res = String.valueOf(( Integer.valueOf(kor) + Integer.valueOf(eng) + Integer.valueOf(mat) )/3);
		return res;
	}
	public String total() {
		String res =  String.valueOf(( Integer.valueOf(kor) + Integer.valueOf(eng) + Integer.valueOf(mat) ));
		return res;
	}
	
}
