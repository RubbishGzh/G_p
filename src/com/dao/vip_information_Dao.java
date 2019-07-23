package com.dao;
/*
 * 这是用于注册和登录的接口
 * 
 */
import com.entity.vip_information;

public interface vip_information_Dao {
	public boolean zhuce(vip_information v_i);
	public boolean denglu(vip_information v_i);
}
