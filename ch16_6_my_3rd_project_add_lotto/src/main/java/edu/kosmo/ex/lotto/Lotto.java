package edu.kosmo.ex.lotto;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class Lotto {
	
	private Set<Integer> set = new TreeSet<>();
	private ArrayList<Integer> arr = new ArrayList<>();
	private ArrayList<String> arrBall = new ArrayList<>();	
	
	private ArrayList<Integer> arrHit = new ArrayList<>();
	private ArrayList<String> arrBallHit = new ArrayList<>();	
	
	private Set<Integer> setWinningNum = new TreeSet<>();
	private ArrayList<Integer> arrWinnigNum = new ArrayList<>();
	private ArrayList<String> arrBallWinnigNum = new ArrayList<>();	

	
	public Lotto() {
		

	}
	
	public ArrayList<Integer> getArrHit() {
		arrHit.clear();
		arrBallHit.clear();	
		
		System.out.println(",,#," + arrWinnigNum.size() + ",");
		// arr 와 winningNum 과 비교해서, 동일한 것이 있으면,  arrHit에 저장
		for(int num : set) {
			for(int i=0; i<arrWinnigNum.size(); i++) {
				if(num == arrWinnigNum.get(i)) {
					System.out.println(num+"*");
					arrHit.add(num);
				}
			}
		}
		
		// arrHit 순서대로 arrBallHit의  ball색깔 결정
		for(int num : arrHit) {
			if(1<= num && num<10) {
				
				arrBallHit.add("img-ball\\0.png");
				System.out.print("0, ");
				
			}else if(10<= num && num< 20) {
				
				arrBallHit.add("img-ball\\1.png");
				System.out.print("1, ");
				
			}else if(20<= num && num< 30) {
				
				arrBallHit.add("img-ball\\2.png");
				System.out.print("2, ");
				
			}else if(30<= num && num< 40) {
				
				arrBallHit.add("img-ball\\3.png");
				System.out.print("3, ");
				
			}else {
				
				arrBallHit.add("img-ball\\4.png");
				System.out.print("4, ");
			}
		}
		
		
		return arrHit;
	}

	public void setArrHit(ArrayList<Integer> arrHit) {
		this.arrHit = arrHit;
	}

	public ArrayList<String> getArrBallHit() {
		return arrBallHit;
	}

	public void setArrBallHit(ArrayList<String> arrBallHit) {
		this.arrBallHit = arrBallHit;
	}

	
	
	
	
	public Set<Integer> getSetWinningNum() {
		return setWinningNum;
	}

	public void setSetWinningNum(Set<Integer> setWinningNum) {
		this.setWinningNum = setWinningNum;
	}

	public ArrayList<Integer> getArrWinnigNum() {
		
		setWinningNum.clear();
		arrWinnigNum.clear();
		arrBallWinnigNum.clear();
		while(true) { 
			int num = (int)(Math.random()*46 + 1);
			//System.out.print(num + ".");
			if(setWinningNum.size() >= 6)
				break;
			setWinningNum.add(num);
			System.out.print(num + "/");
		}
		for(int num : setWinningNum) {
			System.out.print(num + "= ");
			arrWinnigNum.add(num);
		}		
		
		for(int num : setWinningNum) {

			
			if(1<= num && num<10) {
				
				arrBallWinnigNum.add("img-ball\\0.png");
				System.out.print("0, ");
				
			}else if(10<= num && num< 20) {
				
				arrBallWinnigNum.add("img-ball\\1.png");
				System.out.print("1, ");
				
			}else if(20<= num && num< 30) {
				
				arrBallWinnigNum.add("img-ball\\2.png");
				System.out.print("2, ");
				
			}else if(30<= num && num< 40) {
				
				arrBallWinnigNum.add("img-ball\\3.png");
				System.out.print("3, ");
				
			}else {
				
				arrBallWinnigNum.add("img-ball\\4.png");
				System.out.print("4, ");
			}
	
		}	
		
		return arrWinnigNum;
	}

	public void setArrWinnigNum(ArrayList<Integer> arrWinnigNum) {
		this.arrWinnigNum = arrWinnigNum;
	}

	public ArrayList<String> getArrBallWinnigNum() {
		return arrBallWinnigNum;
	}

	public void setArrBallWinnigNum(ArrayList<String> arrBallWinnigNum) {
		this.arrBallWinnigNum = arrBallWinnigNum;
	}



	
	
	
	
	public ArrayList<String> getArrBall() {
		return arrBall;
	}

	public void setArrBall(ArrayList<String> arrBall) {
		this.arrBall = arrBall;
	}

	public ArrayList<Integer> getArr() {
		set.clear();
		arr.clear();
		arrBall.clear();
		
		while(true) { 
			int num = (int)(Math.random()*46 + 1);
			//System.out.print(num + ".");
			if(set.size() >= 6)
				break;
			set.add(num);
			System.out.print(num + ".");
		}
		//정렬된 set 내용을 arr 에 삽입)
		for(int num : set) {
			System.out.print(num + "_ ");
			arr.add(num);
		}
		//정렬된 set (또는 arr 가능) 으로 ball색깔 결정
		for(int num : set) {
			
			
			if(1<= num && num<10) {
				
				arrBall.add("img-ball\\0.png");
				System.out.print("0, ");
				
			}else if(10<= num && num< 20) {
				
				arrBall.add("img-ball\\1.png");
				System.out.print("1, ");
				
			}else if(20<= num && num< 30) {
				
				arrBall.add("img-ball\\2.png");
				System.out.print("2, ");
				
			}else if(30<= num && num< 40) {
				
				arrBall.add("img-ball\\3.png");
				System.out.print("3, ");
				
			}else {
				
				arrBall.add("img-ball\\4.png");
				System.out.print("4, ");
			}
	
		}		

		return arr;
	}

	public void setArr(ArrayList<Integer> arr) {
		this.arr = arr;
	}

	public Set<Integer> getSet() {

		return set;
	}

	public void setSet(Set<Integer> set) {
		this.set = set;
	}


	 
	

	
}
