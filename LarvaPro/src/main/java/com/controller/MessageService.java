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
		//post방식 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		//값 받아오기
		String mSendId = vo1.getMemId();
		String mReceiveId = request.getParameter("ReceiveId");
		String mContent = request.getParameter("Content");
				
		messageVO vo2 = new messageVO(mSendId, mReceiveId, mContent);
		messageDAO dao = new messageDAO();
				
		int cnt = dao.insertMessage(vo2);
				
		if(cnt>0) {
			System.out.println("메세지 전송 성공");
		} else {
			System.out.println("메세지 전송 실패");
		}
	
		response.sendRedirect("mypageMessageJSP.jsp");
	}

}
