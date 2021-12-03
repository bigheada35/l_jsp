package edu.kosmos.ex;

public class Student {
	private String name;
	private int age;
	private int grade;
	private int num;
	
//	JSP에선,ㄴ 디폴트 생성자는 반드시 들어 가야 한다. 안들어 가면 에러남
	public Student() {}
	
	public Student(String name, int age, int grade, int num) {
		super();
		this.name = name;
		this.age = age;
		this.grade = grade;
		this.num = num;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
}
