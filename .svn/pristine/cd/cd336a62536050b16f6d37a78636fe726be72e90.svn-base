package com.service.impl;

import com.dao.vip_information_Dao;
import com.dao.impl.vip_information_Dao_impl;
import com.entity.vip_information;
import com.service.vip_information_service;

public class vip_information_service_impl implements vip_information_service{
	vip_information_Dao r_d=new vip_information_Dao_impl();
	public boolean insert(vip_information v_i){		
		return r_d.zhuce(v_i);
	}
	public boolean select(vip_information v_i){
		return r_d.denglu(v_i);
	}
}
