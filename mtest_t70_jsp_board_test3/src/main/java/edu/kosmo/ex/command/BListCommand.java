package edu.kosmo.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kosmo.ex.dao.BDao;
import edu.kosmo.ex.dto.BDto;

public class BListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("---BListCommand  execute");
		BDao dao = new BDao();
		System.out.println("---BListCommand  execute 2");
		ArrayList<BDto> dtos = dao.list();
		System.out.println("---BListCommand  execute  3");
		request.setAttribute("list", dtos);
	}

}
