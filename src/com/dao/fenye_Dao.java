package com.dao;

import java.util.List;

import com.entity.commodity_information;
import com.entity.page;

public interface fenye_Dao {
	
	public int count();//��ѯ����Ʒ��
	public commodity_information getProductById(int productId);//
	//pageNum��ǰҳ(ҳ��), pageSizeҳ���С(ÿҳ��ʾ����������)
	public List<commodity_information> pagenum(page Page);//��ѯ��ǰҳ��������Ʒ����Ϣ(ĳһҳ)
	
}
