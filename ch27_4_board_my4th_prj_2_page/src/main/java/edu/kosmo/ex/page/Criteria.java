package edu.kosmo.ex.page;

public class Criteria {
	
	private int pageNum;
	private int amount;
	private String searchItem;
	private String searchWord;
	
	public Criteria() {
		this(1,10);//한페이지당 10로 지정(디폴트로) 
	}
	public Criteria( int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public Criteria( int pageNum, int amount, String searchItem, String searchWord) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.searchItem = searchItem;
		this.searchWord = searchWord;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public String getSearchItem() {
		return searchItem;
	}
	public void setSearchItem(String searchItem) {
		this.searchItem = searchItem;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + "]";
	}
	
	
}
