package com.service;
import java.sql.ResultSet;

import util.BaseDao;

import com.entity.vip_information;
import com.mysql.jdbc.*;

public interface vip_information_service {
	public boolean insert(vip_information v_i);
	public boolean select(vip_information v_i);
}
