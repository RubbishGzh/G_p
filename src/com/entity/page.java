package com.entity;
import java.util.List;
/*
  ҳ����
 */
public class page {
	private int totalPage;	//��ҳ��
	private int pageNum;	//��ǰҳ��
	private int totalRecordsNum;//�ܼ�¼����
	private int pageSize;	//ҳ���С
	private int startIndex;	//��ʼ����
	private int prevPageNum;//��һҳ
	private int nextPageNum;//��һҳ
	private int startPage;	//��ҳ
	private int endPage;	//βҳ
	public page(int pageNum, int totalRecordsNum,int pageSize) {
		this.pageNum = pageNum;	//��ȡ��ǰҳ��
		this.totalRecordsNum = totalRecordsNum;
		this.pageSize=pageSize;
		//��������Ʒ������ҳ���С��������ҳ��
		totalPage = totalRecordsNum%pageSize==0?totalRecordsNum/pageSize:totalRecordsNum/pageSize+1;
		prevPageNum = pageNum-1>0?pageNum-1:1;
		nextPageNum = pageNum+1>totalPage?totalPage:pageNum+1;
		startIndex = (pageNum-1)*pageSize;
		startPage = 1;		//��ҳ
		endPage = totalPage;//βҳ
	}
	
	@Override
	public String toString() {
		return this.totalPage+"/"+this.pageNum;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalRecordsNum() {
		return totalRecordsNum;
	}
	public void setTotalRecordsNum(int totalRecordsNum) {
		this.totalRecordsNum = totalRecordsNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPrevPageNum() {
		return prevPageNum;
	}
	public void setPrevPageNum(int prevPageNum) {
		this.prevPageNum = prevPageNum;
	}
	public int getNextPageNum() {
		return nextPageNum;
	}
	public void setNextPageNum(int nextPageNum) {
		this.nextPageNum = nextPageNum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
}
