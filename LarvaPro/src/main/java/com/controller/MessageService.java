package com.controller;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MessageDAO;
import com.model.MessageVO;

@WebServlet("/MessageService")
public class MessageService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//post��� ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		//�� �޾ƿ���
		String mSendId = request.getParameter("mSendId");
		String mReceiveId = request.getParameter("mReceiveId");
		String mContent = request.getParameter("mContent");
		String mSendDate = request.getParameter("mSendDate");
		String mReceiveDate = request.getParameter("mReceiveDate");
		int mState = Integer.parseInt(request.getParameter("mState"));
				
		MessageVO vo = new MessageVO(mSendId, mReceiveId, mContent, mSendDate, mReceiveDate, mState);
		MessageDAO dao = new MessageDAO();
				
		int cnt = dao.insertMessage(vo);
				
		if(cnt>0) {
			System.out.println("�޼��� ���� ����");
		} else {
			System.out.println("�޼��� ���� ����");
		}
				
		//response.sendRedirect("main.jsp");
	}

}
