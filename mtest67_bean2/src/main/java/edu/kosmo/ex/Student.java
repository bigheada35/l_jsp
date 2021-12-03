package edu.kosmo.ex;

public class Student {
	private int kor,eng,mat;
	private String name;
	private double tot,avg;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getTot() {
		tot = kor+eng+mat;
		return tot;
	}
	public void setTot(double tot) {
		this.tot = tot;
	}
	public double getAvg() {
		avg = (kor+eng+mat)/(double)3;
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
}
