package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.postcommentDAO;
import com.model.postcommentVO;

@WebServlet("/PostCommentService")
public class PostCommentService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//�� �޾ƿ���
		String pcMemId  = request.getParameter("pcMemId");
		String pcContent  = request.getParameter("pcContent");
		String pcDate  = request.getParameter("pcDate");
		
		postcommentVO vo = new postcommentVO(pcMemId, pcContent, pcDate);
		postcommentDAO dao = new postcommentDAO();
		
		int cnt = dao.insetPostComment(vo);
		
		if(cnt>0) {
			System.out.println("��� �ۼ� ����");
		} else {
			System.out.println("��� �ۼ� ����");
		}
	}

}
