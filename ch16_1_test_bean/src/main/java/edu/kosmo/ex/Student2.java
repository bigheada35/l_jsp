package edu.kosmo.ex;

public class Student2 {
	
	private int kor,eng,mat;
	private double tot,avg;
	private String name;
	
	//주의 : 디폴트 생성자를 사용해야 한다.
	public Student2() {
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


}
