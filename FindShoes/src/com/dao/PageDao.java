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
		//��������
	    page.setRowCount(rowCount);
	    //����ҳ��
		if (rowCount>pageSize) {
			if (rowCount % pageSize == 0) {
				page.setPageCount(rowCount/pageSize);
			} else {
                page.setPageCount(1 + (rowCount / pageSize));
            }
		}else if (rowCount<=pageSize) {
			page.setPageCount(1);
		}
		//���õ�ǰҳ��
		page.setPageNow(pageNow);
		//����ǰһҳ,�����ǵ�һҳ��ʱ����ǰһҳ
		if (pageNow!=1) {
			page.setHasPreviousPage(true);
		}else {
			page.setHasPreviousPage(false);
		}
		//���ú�һҳ�����������һҳ��ʱ���к�һҳ
		if (pageNow!=page.getPageCount()) {
			page.setHasNextPage(true);
		}else {
			page.setHasNextPage(false);
		}
		//���ø�ҳ���ĵ�һ����¼��index
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
