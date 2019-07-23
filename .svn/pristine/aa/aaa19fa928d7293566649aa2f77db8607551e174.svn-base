package com.service.impl;
import java.util.List;

import com.dao.fenye_Dao;
import com.dao.impl.fenye_Dao_impl;
import com.entity.commodity_information;
import com.entity.page;
import com.service.fenye_service;
public class fenye_service_impl implements fenye_service{
	fenye_Dao fd=new fenye_Dao_impl();
	public int count(){//查询数据总条数
		return fd.count();
	}
	public List<commodity_information> pagenum(page Page){//查询当前页总条数
		return fd.pagenum(Page);
	}
}
