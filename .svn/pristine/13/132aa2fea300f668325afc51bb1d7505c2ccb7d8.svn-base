package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.address;
import com.service.address_service;
import com.service.impl.address_service_impl;

public class pay_add_servlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		address_service as=new address_service_impl();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String recevername=request.getParameter("addressee");
		String cityAddress=request.getParameter("cityAddress");
		String streetAddress=request.getParameter("streetAddress");
		
		String Phone=request.getParameter("phone");
		address add=new address();
		add.setRecevername(recevername);
		add.setCityAddress(cityAddress);
		add.setStreetAddress(streetAddress);
		add.setPhone(Phone);
		if(as.insert(add)){
			request.getRequestDispatcher("pay.jsp").forward(request, response);
			
		}else{
			response.sendRedirect("pay.jsp");
		}
	}

}
