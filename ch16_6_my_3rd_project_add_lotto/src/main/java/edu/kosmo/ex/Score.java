package edu.kosmo.ex;

import javax.servlet.http.Cookie;

public class Score {
	int  myScore, computerScore;
	int count;
	//Cookie ck = null;
	
	public Score(String myScore, String computerScore){
		this.count = 0;
		this.myScore = Integer.valueOf(myScore);
		this.computerScore = Integer.valueOf(computerScore);
		//ck = new Cookie(myScore, computerScore);
		//ck.setMaxAge(60*5);
	}
	public void incCount() {
		count++;
	}
	public String getCount() {
		return String.valueOf(count);
	}
	public void incMyScore() {
		this.myScore ++;
	}
	public String getMyScore() {
		return String.valueOf(myScore);
	}

	public void setMyScore(String myScore) {
		this.myScore = Integer.valueOf(myScore);
	}
	public void incComputerScore() {
		this.computerScore ++;
	}
	public String getComputerScore() {
		return String.valueOf(computerScore);
	}

	public void setComputerScore(String computerScore) {
		this.computerScore = Integer.valueOf(computerScore);
	}
	//public Cookie getCk() {
	//	return ck;
	//}

	//public void setCk(Cookie ck) {
	//	this.ck = ck;
	//}
}
