package edu.kosmo.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kosmo.ex.dao.BDao;
import edu.kosmo.ex.dto.BDto;
import edu.kosmo.ex.page.Criteria;
import edu.kosmo.ex.page.Page;

public class BListCommand3 implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//---------search---------
		String searchItem = request.getParameter("searchItem");
		String searchWord = request.getParameter("searchWord");

		//---------list---------
		Criteria cri = null;
		String pageNum = request.getParameter("pageNum");
		String amount = request.getParameter("amount");
				
		System.out.println("---21--- pageNum: " + pageNum);
		if(pageNum == null || amount == null) {
			System.out.println("---22--- pageNum : " + pageNum);
			cri = new Criteria();
		}else if(pageNum != null && amount != null && searchItem != null && searchWord != null) {
			System.out.println("---23--- pageNum : " + pageNum);
			System.out.println("---23--- amount : " + amount);
			System.out.println("---23--- searchItem:" + searchItem  + ", isEmpty:" + searchItem.isEmpty());
			System.out.println("---23--- searchWord:" + searchWord + ", isEmpty:" + searchWord.isEmpty());
			
			if( searchItem.isEmpty() || searchWord.isEmpty()) 
				cri = new Criteria(Integer.valueOf(pageNum), Integer.valueOf(amount));
			else
				cri = new Criteria(Integer.valueOf(pageNum), Integer.valueOf(amount), searchItem, searchWord);
		}
		else {
			System.out.println("---24--- pageNum : " + pageNum);
			System.out.println("---24--- amount : " + amount);
			cri = new Criteria(Integer.valueOf(pageNum), Integer.valueOf(amount));
		}
		
		if(searchItem !=null && searchWord !=null) {
			System.out.println("---25--- searchItem: " + searchItem);
			System.out.println("---25--- searchWord: " + searchWord);
			if( !searchItem.isEmpty() && !searchWord.isEmpty()) { 
				System.out.println("---26--- searchItem: " + searchItem);
				System.out.println("---26--- searchWord: " + searchWord);
				cri.setSearchItem(searchItem);
				cri.setSearchWord(searchWord);
			}		
		}		
		
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.getListWithPaging(cri);
		request.setAttribute("list", dtos);
		

		int total = dao.getTotalCount(cri);
		request.setAttribute("pageMaker", new Page(cri, total));
	
		
	}

}
