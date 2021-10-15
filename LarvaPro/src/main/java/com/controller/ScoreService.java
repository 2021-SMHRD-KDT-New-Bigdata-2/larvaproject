package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.scoreDAO;
import com.model.scoreVO;

@WebServlet("/ScoreService")
public class ScoreService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//�� �޾ƿ���
		int num = Integer.parseInt(request.getParameter("num"));
		String sendId = request.getParameter("sendId");
		String receiveId = request.getParameter("receiveId");
		int receiveScore = Integer.parseInt(request.getParameter("receiveScore"));
		
		//vo�� ����
		scoreVO vo = new scoreVO(num, sendId, receiveId, receiveScore);
		scoreDAO dao = new scoreDAO();
		
		int cnt = dao.insertScore(vo);
		
		if(cnt>0) {
			System.out.println("���� �Է� ����");
		} else {
			System.out.println("���� �Է� ����");
		}
		
		response.sendRedirect("main.jsp");
		
	}

}
