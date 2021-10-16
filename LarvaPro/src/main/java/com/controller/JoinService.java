package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;
import com.model.memberVO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("euc-kr");

		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		String nick=request.getParameter("nick");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		String address=request.getParameter("address");

		memberVO memberInfo=new memberVO(id, pw, name, nick, email, tel, address, tel,1,"���� �λ��� �����ϴ�.");
		memberDAO membershipJoin=new memberDAO();

		int cnt=membershipJoin.join(memberInfo);

		if(cnt>0) {
			//ȸ���̸��� �Ѱ��ֱ�
			request.setAttribute("JoinName",memberInfo.getMemUserName());
			//forward ������� ������ �̵�
			RequestDispatcher rd=request.getRequestDispatcher("JoinSuccess.jsp");
			rd.forward(request, response);
		}
	}

}
