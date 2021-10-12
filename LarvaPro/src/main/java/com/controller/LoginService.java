package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.memberDAO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("LoginId");
		String pw=request.getParameter("LoginPw");
		
		memberDAO Login=new memberDAO();
		int cnt=Login.login(id,pw);
		
		if(cnt==1) {
		      request.setAttribute("LoginName",id);
		      RequestDispatcher rd=request.getRequestDispatcher("LoginSuccess.jsp");
		      rd.forward(request, response);
		}else{
		      response.sendRedirect("loginFail");
		}
		
	}

}