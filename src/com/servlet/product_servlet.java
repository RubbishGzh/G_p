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
		//������Ʒ�����ݿ����
		fenye_Dao pd = new fenye_Dao_impl();
		String productId = request.getParameter("productId");//��ȡ��shouye.jsp����������Ʒ���
		//ͨ����Ʒid��ѯ��Ʒ������
		commodity_information detail = pd.getProductById(Integer.parseInt(productId));
		HttpSession session = request.getSession();		//����session����
		session.setAttribute("productDetail", detail);//����Ʒ�������ŵ�session��productDetail������
		response.sendRedirect("productDetail.jsp");//��ҳ��ת��ת����Ʒ����ҳ���ض���
	}

}
