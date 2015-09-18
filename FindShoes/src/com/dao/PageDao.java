package com.dao;

import java.util.ArrayList;
import java.util.List;

import com.util.Page;

public class PageDao {
	
	public Page page;
	public List list;
	public List init(List al,int pageNow,int pageSize) {
		int start;
		int end;
		int rowCount = al.size();
		page = new Page();
		list = new ArrayList();
		System.out.println("al.size="+al.size());
		//设置行数
	    page.setRowCount(rowCount);
	    //设置页数
		if (rowCount>pageSize) {
			if (rowCount % pageSize == 0) {
				page.setPageCount(rowCount/pageSize);
			} else {
                page.setPageCount(1 + (rowCount / pageSize));
            }
		}else if (rowCount<=pageSize) {
			page.setPageCount(1);
		}
		//设置当前页数
		page.setPageNow(pageNow);
		//设置前一页,当不是第一页的时候有前一页
		if (pageNow!=1) {
			page.setHasPreviousPage(true);
		}else {
			page.setHasPreviousPage(false);
		}
		//设置后一页，当不是最后一页的时候有后一页
		if (pageNow!=page.getPageCount()) {
			page.setHasNextPage(true);
		}else {
			page.setHasNextPage(false);
		}
		//设置改页数的第一条记录的index
		start = pageSize*(pageNow-1);
		if (start+pageSize<page.getRowCount()) {
			end = start+pageSize;
		}else {
			end = page.getRowCount();
		}
		for (int i = start; i < end; i++) {
			list.add(al.get(i));
		}		
		return list;
	}
}
