package com.controller;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.messageDAO;
import com.model.messageVO;
import com.model.memberVO;

@WebServlet("/MessageService")
public class MessageService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		memberVO vo1 = new memberVO();
		//post��� ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		//�� �޾ƿ���
		String mSendId = vo1.getMemId();
		String mReceiveId = request.getParameter("ReceiveId");
		String mContent = request.getParameter("Content");
				
		messageVO vo2 = new messageVO(mSendId, mReceiveId, mContent);
		messageDAO dao = new messageDAO();
				
		int cnt = dao.insertMessage(vo2);
				
		if(cnt>0) {
			System.out.println("�޼��� ���� ����");
		} else {
			System.out.println("�޼��� ���� ����");
		}
	
		response.sendRedirect("mypageMessageJSP.jsp");
	}

}
