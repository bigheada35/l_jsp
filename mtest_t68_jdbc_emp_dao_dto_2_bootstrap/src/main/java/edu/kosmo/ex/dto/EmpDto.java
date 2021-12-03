package edu.kosmo.ex.dto;

public class EmpDto {
	private String ename;
	private String job;
	private int deptno;
	public EmpDto() {
	
	}
	public EmpDto(String ename, String job, int deptno) {
		super();
		this.ename = ename;
		this.job = job;
		this.deptno = deptno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
		
	
	
	
}
