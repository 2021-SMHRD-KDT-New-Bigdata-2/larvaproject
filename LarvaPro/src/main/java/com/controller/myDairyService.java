package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.model.personalcontestDAO;
import com.model.personalcontestVO;

@WebServlet("/myDairyService")
public class myDairyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String myConCnt = request.getParameter("contestNum");
		String myConRole = request.getParameter("position");
		String myDairy = request.getParameter("Dairy");
		
		System.out.println(myConCnt);
		System.out.println(myConRole);
		System.out.println(myDairy);

		personalcontestDAO PSDAO = new personalcontestDAO();
		int result = PSDAO.updateDairy(myConCnt,myConRole,myDairy);

		if (result > 0) {
			
		}
	}

}
