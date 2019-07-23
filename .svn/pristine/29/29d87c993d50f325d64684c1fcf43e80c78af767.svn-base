package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.entity.vip_information;
import com.service.vip_information_service;
import com.service.impl.vip_information_service_impl;

public class register_servlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("username");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		vip_information_service r_s = new vip_information_service_impl();
		vip_information v_i=new vip_information(name,email,pwd);
		
		if(r_s.insert(v_i)){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		
		
	}

	
}
