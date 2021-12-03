package edu.kosmo.ex;

public class Student {
	private int kor,eng,mat;
	private double tot,avg;
	private String name;
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
	public double getTot() {
		tot = kor + eng + mat;
		return tot;
	}
	public void setTot(double tot) {
		this.tot = tot;
	}
	public double getAvg() {
		avg = (kor + eng + mat ) /3;
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Student(int kor, int eng, int mat, String name) {
		super();
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		this.name = name;
	}
	
	public Student(String name, int kor, int eng, int mat ) {
		super();
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		this.name = name; 
	}
	//
	//	중요 : 주의 : java bean 에서는  디폴트 생성자가 꼭 있어야 함
	//
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
}
