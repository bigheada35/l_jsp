package edu.kosmo.ex.dto;

public class EmpDto {
	
	private int empno;
	private String ename;
	private String hiredate;
	private int sal;
	private int com;
	private int deptno;
	
	public EmpDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EmpDto(int empno, String ename, String hiredate, int sal, int com, int deptno) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.hiredate = hiredate;
		this.sal = sal;
		this.com = com;
		this.deptno = deptno;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getHiredate() {
		return hiredate;
	}

	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}

	public int getSal() {
		return sal;
	}

	public void setSal(int sal) {
		this.sal = sal;
	}

	public int getCom() {
		return com;
	}

	public void setCom(int com) {
		this.com = com;
	}

	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	
	
	
}
