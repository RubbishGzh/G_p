package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.fenye_Dao;
import com.dao.impl.fenye_Dao_impl;
import com.entity.commodity_information;



public class product_servlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		//创建商品的数据库对象
		fenye_Dao pd = new fenye_Dao_impl();
		String productId = request.getParameter("productId");//获取由shouye.jsp发送来的商品编号
		//通过商品id查询商品的详情
		commodity_information detail = pd.getProductById(Integer.parseInt(productId));
		HttpSession session = request.getSession();		//创建session对象
		session.setAttribute("productDetail", detail);//把商品详情对象放到session的productDetail变量中
		response.sendRedirect("productDetail.jsp");//网页跳转跳转到商品详情页，重定向
	}

}
