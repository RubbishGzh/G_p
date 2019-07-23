package com.dao.impl;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.BUtil;

import com.dao.fenye_Dao;
import com.entity.*;

import com.entity.commodity_information;
import com.entity.page;
public class fenye_Dao_impl implements fenye_Dao{
	
	
	public int count(){////查询总商品数
		String sql="select count(1) from commodity_information";
		return BUtil.count_util(sql);
	}

	
	public List<commodity_information> pagenum(page pager) {//查询当前页面所有商品的信息(某一页)当前页的数据集合
		List<commodity_information> list=new ArrayList<commodity_information>();
		String sql="select * from commodity_information limit ?,?";
		Object[] params={pager.getStartIndex(),pager.getPageSize()};
		try {
			ResultSet rs = BUtil.sel_util(sql, params);
			while(rs.next()){
				commodity_information pn=new commodity_information(rs.getInt("ProductId"),rs.getString("ProductName"),rs.getFloat("ProductPrice"),rs.getString("ProductPic"),rs.getString("ProductOutline"),rs.getInt("Productstorage"));
				list.add(pn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public commodity_information getProductById(int productId) {
		ResultSet rs=null;
		String sql="select * from commodity_information where productId=?";
		commodity_information c_i=null;
		try {
			Object[] param={productId};
			rs = BUtil.sel_util(sql, param);
			if(rs.next()){
				c_i=new commodity_information(rs.getInt("ProductId"),rs.getString("ProductName"),rs.getFloat("ProductPrice"),rs.getString("ProductPic"),rs.getString("ProductOutline"),rs.getInt("Productstorage"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c_i;
	}
	
	
}
