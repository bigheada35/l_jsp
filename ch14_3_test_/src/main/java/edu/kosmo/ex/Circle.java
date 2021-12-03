package edu.kosmo.ex;

public class Circle {
	
	private int radius;
	private double space;
	
	public Circle(int radius){
		this.radius = radius;
	}
	
	public double getSpace(){
		this.space = (radius*radius*Math.PI);
		return this.space;
	}
}
