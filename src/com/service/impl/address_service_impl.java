package com.service.impl;

import com.dao.address_Dao;
import com.dao.impl.address_Dao_impl;
import com.entity.address;
import com.service.address_service;

public class address_service_impl implements address_service{
address_Dao ad=new address_Dao_impl();
public boolean insert(address add){
	return ad.dizhi(add);
}

}



