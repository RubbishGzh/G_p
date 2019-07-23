package com.dao.impl;
import java.sql.*;

import com.dao.vip_information_Dao;
import com.entity.vip_information;

import util.BUtil;
public class vip_information_Dao_impl implements vip_information_Dao{
	public boolean zhuce(vip_information v_i){//注册对vip_information表进行插入数据 
		String sql="insert into vip_information(UserName,UserPwd,Useremail) values (?,?,?)";
		Object [] params={v_i.getUserName(),v_i.getUserPwd(),v_i.getUseremail()};
		return BUtil.idu_util(sql, params);//调用了公用数据库类中的公用插入方法完成
		}
	
	public boolean denglu(vip_information v_i){//登录对vip_information进行查询数据
		boolean flag=false;
		try{
			String sql="select UserName,UserPwd from vip_information where UserName=? && UserPwd=?";
			Object[]params={v_i.getUserName(),v_i.getUserPwd()};
			ResultSet rs=BUtil.sel_util(sql, params);//调用了公用数据库类中的公用查询方法完成
			
			if(rs.next()){flag=true;}
			else		 {flag=false;}

			}catch(Exception e){e.printStackTrace();}
		
			return flag;
	
	}
}
