package com.service;

import java.util.List;

import com.entity.commodity_information;
import com.entity.page;

public interface fenye_service {
	public int count();
	public List<commodity_information> pagenum(page Page);
}
