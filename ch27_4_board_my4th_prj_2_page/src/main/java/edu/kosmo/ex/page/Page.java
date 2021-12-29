package edu.kosmo.ex.page;

public class Page {

	private int startPage;//화면에 보여지는 페이지 시작 번호
	private int endPage;// 화면에 보여지는 끝번호
	
	private boolean pre, next;
	
	private int total;//전체 게시판 글수
	private Criteria cri;
	
	public Page(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;

		//먼저 engPage부터 계산
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) * 10;	//ceil(0.3) : 1
		
		this.startPage = this.endPage - 9;
		
		//게시글 이 80 개 라면,  page는 1,2,3,4,5,6,7,8 까지만 보이도록
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		
		if(realEnd <= this.endPage) {
			this.endPage = realEnd;
		}
		
		this.pre = this.startPage > 1;		// <--- ???? 
		this.next = this.endPage < realEnd;
		
	}

	public String makeQuery(int page) {
		
		String query = null;
		if(cri.getSearchWord() == null)
			query = "?pageNum=" + page + "&amount=" + cri.getAmount();
		else	
			query = "?pageNum=" + page + "&amount=" + cri.getAmount() + "&searchWord=" + cri.getSearchItem()+ "&searchItem=" + cri.getSearchWord() ;
		return query;
	}
	
	
	
	
	
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPre() {
		return pre;
	}

	public void setPre(boolean pre) {
		this.pre = pre;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	
}
