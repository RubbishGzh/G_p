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
/*
 * 登录Servlet 
 * 
 */
public class login_servlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		vip_information_service v_i_s=new vip_information_service_impl();//创建接口对象
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("username");//获取登录jsp的姓名
		String pwd=request.getParameter("pwd");//获取登录jsp的密码
		
		vip_information v_i=new vip_information(name,pwd);//创建实体类对象并将姓名密码输入
		
		if(v_i_s.select(v_i)){//如果用户存在
			request.getSession().setAttribute("hy","欢迎您：");//创建session对象并传入一个参数
			request.getSession().setAttribute("uname",name);//创建session对象并传入一个参数
			request.getRequestDispatcher("fenye_servlet").forward(request, response);//并将页面转发至
		}else if(!v_i_s.select(v_i)){
			response.sendRedirect("login.jsp");
			request.getSession().setAttribute("error","a");
		}
	}

}
