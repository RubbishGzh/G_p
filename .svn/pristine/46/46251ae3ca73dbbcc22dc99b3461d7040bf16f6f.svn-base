package com.dao.impl;


import com.dao.address_Dao;
import com.entity.address;

import util.BUtil;

public class address_Dao_impl implements address_Dao{//瀹屾垚浜嗘柊澧炲湴鍧�殑鏁版嵁鎻掑叆锛坅ddress琛級
	public boolean dizhi(address add){
		String sql="insert into address(recevername,cityAddress,streetAddress,Phone) values (?,?,?,?)";
		Object [] params={add.getRecevername(),add.getCityAddress(),add.getStreetAddress(),add.getPhone()};
		return BUtil.idu_util(sql, params);//璋冪敤浜嗗叕鐢ㄥ簱绫荤殑鍏敤鎻掑叆鏂规硶
		}
}
