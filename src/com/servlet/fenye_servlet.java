package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.dao.fenye_Dao;
import com.dao.impl.fenye_Dao_impl;
import com.entity.commodity_information;
import com.entity.page;
import com.service.fenye_service;
import com.service.vip_information_service;
import com.service.impl.fenye_service_impl;
import com.service.impl.vip_information_service_impl;

public class fenye_servlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		fenye_Dao fs=new fenye_Dao_impl();
		
		int page = 1;//Ĭ�ϵ�ǰҳΪ��һҳ
		if(request.getParameter("pg")!=null){
			page = Integer.parseInt(request.getParameter("pg"));
		}
		int totalpages=fs.count();//��ȡ��ҳ��
		//����һ��page���󡣰ѵ�ǰҳ����ҳ����ҳ���С��װ��page������
		page pager = new page(page,totalpages,4);
		List<commodity_information> products=fs.pagenum(pager);//��ѯ��ǰҳ�е�������Ʒ
		request.setAttribute("products", products);//����Ʒ�ļ��Ϸŵ�request������
		request.setAttribute("page", pager);//��ҳ�����page�����ݷŵ�request��
		
		request.getRequestDispatcher("shouye.jsp").forward(request, response);//ת��
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}